codeunit 50101 "Company Information Notif."
{
    [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnOpenPageEvent', '', false, false)]
    local procedure CheckCompanyInfoOnOpenSalesOrder(var Rec: Record 36);
    var
        CompanyInfo: Record "Company Information";
    begin
        IF CompanyInfo.GET THEN
            IF (CompanyInfo.Name <> '') AND (CompanyInfo."E-Mail" <> '') THEN
                EXIT;

        CompInfoNotification.Id := CompInfoNotificationID;
        CompInfoNotification.Scope := NotificationScope::LocalScope;
        CompInfoNotification.Message := CompInfoNotificationMsg;
        CompInfoNotification.AddAction(
            CompInfoNotificationActionMsg,
            Codeunit::"Company Information Notif.",
            'ShowCompanyInfoWizard');
        CompInfoNotification.Send;
    end;

    procedure ShowCompanyInfoWizard(Notification: Notification);
    begin
        Page.Run(Page::"Company Wizard");
    end;

    var
        CompInfoNotification: Notification;
        CompInfoNotificationID: Label 'dad7f25b-5612-4edf-85d6-15757c6b2321', Locked = true;
        CompInfoNotificationMsg: Label 'Company Information is missing.';
        CompInfoNotificationActionMsg: Label 'Open Company Information Setup';
}