xmlport 50100 ExportBooks
{
    Caption = 'Export Books';
    UseRequestPage = false;
    Format = Xml;
    Direction = Export;

    schema
    {
        textelement(Books)
        {
            tableelement(Book; Book)
            {
                fieldattribute(No; Book."No.")
                {
                    
                }
                fieldelement(Title; Book.Title)
                {

                }
                fieldelement(Author; Book.Author)
                {

                }
                fieldelement(Hardcover; Book.Hardcover)
                {

                }
                fieldelement(PageCount; Book."Page Count")
                {

                }
                fieldelement(NoOfCust; Book."No. of Customers")
                {

                }
            }
        }
    }
}