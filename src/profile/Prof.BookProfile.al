profile "BookProfile" 
{
    Description = 'Book RoleCenter';
    RoleCenter = "Order Processor Role Center";
    Customizations = CustCardCust, CustListCust;
}

pagecustomization CustCardCust customizes "Customer Card"
{
    layout
    {
        modify("Location Code")
        {
            Visible = false;
        }
    }
    
    actions
    {
        moveafter(NewSalesQuote; NewSalesOrder)
    }
    
    //Variables, procedures and triggers are not allowed on Page Customizations
}

pagecustomization CustListCust customizes "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        moveafter(NewSalesQuote; NewSalesOrder)
    }
    
    //Variables, procedures and triggers are not allowed on Page Customizations
}