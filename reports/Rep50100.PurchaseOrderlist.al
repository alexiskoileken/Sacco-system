/// <summary>
/// Report Prchase Order list (ID 50100).
/// </summary>
report 50100 "Purchase Order list"
{
    Caption = 'Prchase Order list';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'layout/purchaseOrderList.rdl';

    dataset
    {
        dataitem(PurchaseHeader; "Purchase Header")
        {
            RequestFilterFields = "No.", Status, "Document Type";
            RequestFilterHeading = 'Option';
            column(No_; "No.") { }
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.") { }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name") { }
            column(Document_Date; "Document Date") { }
            column(Location_Code; "Location Code") { }
            column(Amount; Amount) { }
            column(companyName; CompInfo.Name) { }
            column(companyAdress; CompInfo.Address) { }
            column(companyCity; CompInfo.City) { }
            column(CompanyPicture; CompInfo.Picture) { }
            column(ReportHeading; ReportHeading) { }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        CompInfo.Get();
        CompInfo.CalcFields(Picture);
    end;

    var
        CompInfo: Record "Company Information";
        ReportHeading: Label 'Purchase Order list';
}
