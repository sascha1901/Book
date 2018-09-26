pageextension 50100 "CustomerCardBookExtension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favorite Book No.";"Favorite Book No.")
            {
                ApplicationArea = All;
            }
        }

        addfirst(FactBoxes)
        {
            part(BookDetailFactbox; BookDetailFactbox)
            {
                Caption = 'Book Details';
                SubPageLink = "No."=field("Favorite Book No.");
                ApplicationArea = All;
            }
        }
    }
}