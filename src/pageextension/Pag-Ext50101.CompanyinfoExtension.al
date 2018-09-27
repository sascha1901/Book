pageextension 50101 "CompanyinfoExtension" extends "Company Information"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addlast(Processing)
        {
            action(myWizard)
            {
                ApplicationArea = All;
                Caption = 'Wizard she';
                RunObject = page "Company Wizard"; 
            }
        }
    }
    
    var
        myInt: Integer;
}