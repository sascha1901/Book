table 50100 "Book"
{
    DataClassification = CustomerContent;
    Caption = 'Book';
    DrillDownPageId = "Book List";
    LookupPageId = "Book List";
    
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Title; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Tile';
        }
        field(3; Author; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Author';
        }
        field(4; Hardcover; Boolean)
        {
            Caption = 'Hardcover';
        }
        field(5; "Page Count"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Page Count';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }    

    fieldgroups
    {
        fieldgroup("DropDown"; "No.", Title, Author)
        {

        }
    }
}