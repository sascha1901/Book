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
    }
}