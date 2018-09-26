report 50100 "BookList"
{
    Caption = 'Book List';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\src\report\50100.rdl';

    dataset
    {
        dataitem(SingkeRowDataItem;Integer)
        {
            DataItemTableView = sorting(Number) where(Number=const(1));
            column(COMPANYNAME; CompanyProperty.DisplayName())
            {

            }
            column(PrintPageCount;PrintPageCount)
            {

            }
            column(PageCaption;PageCaption)
            {

            }
            column(ReportCaption;ReportCaption)
            {
                
            }
        }

        dataitem(Book; Book)
        {
            RequestFilterFields = "No.", Author;

            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Author;Author)
            {
                IncludeCaption = true;
            }
            column(No_of_Customers;"No. of Customers")
            {
                IncludeCaption = true;
            }
            column(Page_Count;"Page Count")
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(PrintPageCount;PrintPageCount)
                    {
                        Caption = 'Print Page Count';
                        ApplicationArea = All;
                    }
                }
            }
        }
        trigger OnOpenPage();
        begin
            PrintPageCount := true;
        end;
    }
    
    var
        PrintPageCount: Boolean;
        ReportCaption: Label 'Book List';
        PageCaption: label 'Page {0} of {1}';
}