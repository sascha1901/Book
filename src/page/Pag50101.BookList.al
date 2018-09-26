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
    
}
