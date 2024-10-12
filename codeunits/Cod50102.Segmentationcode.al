/// <summary>
/// Codeunit Segmentation code (ID 50102).
/// </summary>
codeunit 50102 "Segmentation code"
{
    var
        SalesInvHdr: Record "Sales Invoice Header";
        Customer: Record Customer;

    /// <summary>
    /// CalculateSegmentation.
    /// </summary>
    /// <param name="CustomerNo">Code[20].</param>
    procedure UpdateCustomerSegment(CustomerNo: Code[20])
    var
        TotalSales: Decimal;
    begin

        SalesInvHdr.Reset();
        SalesInvHdr.SetRange("Posting Date", CalcDate('<12M>', WorkDate()), WorkDate());
        SalesInvHdr.SetRange("Sell-to Customer No.", CustomerNo);

        TotalSales := 0;
        if SalesInvHdr.FindSet() then begin
            repeat
                TotalSales += SalesInvHdr.Amount;
            until SalesInvHdr.Next() = 0;


            if Customer.Get(CustomerNo) then begin
                Customer.Init();
                if TotalSales > 50000 then
                    Customer.Segment := Customer.Segment::High
                else if TotalSales > 10000 then
                    Customer.Segment := Customer.Segment::Medium
                else
                    Customer.Segment := Customer.Segment::Low;
                Customer.Modify(true);
                Customer.Insert(true);
            end;
        end;

    end;
}
