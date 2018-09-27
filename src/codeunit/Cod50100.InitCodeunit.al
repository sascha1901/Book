codeunit 50100 "Init Codeunit"
{
    [EventSubscriber(ObjectType::Table, Database::"Aggregated Assisted Setup", 'OnRegisterAssistedSetup', '', false, false)]
    local procedure AddExtensionAssistedSetup_OnRegisterAssistedSetup(var TempAggregatedAssistedSetup: Record "Aggregated Assisted Setup" TEMPORARY);
    var
        AssistedSetupRecord: Record "Company Information";
    begin
        TempAggregatedAssistedSetup.AddExtensionAssistedSetup(Page::"Company Wizard",
                                                            'Setup Company',
                                                            True,
                                                            AssistedSetupRecord.RecordId(),
                                                            GetAssistedSetupStatus(TempAggregatedAssistedSetup),
                                                            '');
    end;

    [EventSubscriber(ObjectType::Table, Database::"Aggregated Assisted Setup", 'OnUpdateAssistedSetupStatus', '', false, false)]
    local procedure AggregatedAssistedSetup_OnUpdateAssistedSetupStatus(var TempAggregatedAssistedSetup: Record "Aggregated Assisted Setup" TEMPORARY);
    begin
        TempAggregatedAssistedSetup.SetStatus(TempAggregatedAssistedSetup, PAGE::"Company Wizard", GetAssistedSetupStatus(TempAggregatedAssistedSetup));
    end;

    local procedure GetAssistedSetupStatus(AggregatedAssistedSetup: Record "Aggregated Assisted Setup"): Integer;
    var
        AssistedSetupRecord: Record "Company Information";
    begin
        WITH AggregatedAssistedSetup DO BEGIN
            IF AssistedSetupRecord.Get() THEN
                Status := Status::Completed
            ELSE
                Status := Status::"Not Completed";
            EXIT(Status);
        END;
    end;

    [EventSubscriber(ObjectType::Page, 1518, 'OnInitializingNotificationWithDefaultState', '' , true, true)]
    local procedure OnInitialNotificationWithDefaultState();
    var
        mynotification: Record "My Notifications";
    begin
        mynotification.InsertDefaultWithTableNum('dad7f25b-5612-4edf-85d6-15757c6b2321',
            'Company info is missing',
            'Comp. Info',
            DATABASE::Customer);
    end;
}