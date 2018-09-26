tableextension 50100 "CustomerBookExtension" extends Customer
{
    fields
    {
        field(50100; "Favorite Book No."; Code[20])
        {
            TableRelation = Book."No.";
            Caption = 'Favorite Book No.';
        }
    }
}