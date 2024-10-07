/// <summary>
/// Codeunit Sales  (ID 50101).
/// </summary>
codeunit 50101 "Sales "
{
    /// <summary>
    /// GetBiggestSaleOrder.
    /// </summary>
    /// <returns>Return variable SalesOrder of type Decimal.</returns>
    procedure GetBiggestSaleOrder() SalesOrder: Decimal
    var
        SalesLn: Record "Sales Line";
    begin
        SalesLn.reset();
        SalesLn.SetRange("Document Type", SalesLn."Document Type"::Order);
        SalesLn.SetCurrentKey(Amount);
        SalesLn.Ascending(false);
        if SalesLn.FindFirst() then
            SalesOrder := SalesLn.Amount;

    end;

}
