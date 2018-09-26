page 50101 "Book List"
{
    
    PageType = List;
    SourceTable = "Book";
    Caption = 'Books';
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Book Card";
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                }
                field("Title";"Title")
                {
                    ApplicationArea = All;
                }
                field("Author";"Author")
                {
                    ApplicationArea = All;
                }
                field("Hardcover";"Hardcover")
                {
                    ApplicationArea = All;
                }
                field("Page Count";"Page Count")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Reporting)
        {
            action(ExportBooks)
            {
                Caption = 'Export XML';
                Image = CreateXMLFile;
                ApplicationArea = All;

                trigger OnAction()
                var
                    exportXML: XmlPort ExportBooks;
                    books: Record Book;
                begin
                    CurrPage.SetSelectionFilter(books);
                    exportXML.SetTableView(books);
                    exportXML.Run();
                end;
            }

            action(PrintBooks)
            {
                Caption = 'Print Books';
                ApplicationArea = All;
                Image = Print;
                RunObject = report BookList;
            }
        }
    }
    
}