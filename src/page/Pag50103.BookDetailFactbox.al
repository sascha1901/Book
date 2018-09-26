page 50103 "BookDetailFactbox"
{
    PageType = CardPart;
    SourceTable = Book;

    layout
    {
        area(content)
        {
            field("No."; "No.")
            {
                ApplicationArea = All;
                DrillDown = true;

                trigger OnDrillDown();
                begin
                    ShowDetails();
                end;
            }
            field(Title; Title)
            {
                ApplicationArea = All;
            }
            field(Author; Author)
            {
                ApplicationArea = All;
            }
            field("No. of Customers"; "No. of Customers")
            {
                ApplicationArea = All;
            }

        }
    }

    local procedure ShowDetails();
    begin
        Page.Run(Page::"Book Card", Rec);
    end;
}