/// <summary>
/// PageExtension Sales Line ext (ID 50101) extends Record Sales Lines.
/// </summary>
pageextension 50101 "Sales Line ext" extends "Sales Lines"
{
    layout
    {

    }
    actions
    {
        addfirst(Processing)
        {
            action("Sort Order")
            {
                Caption = 'Sort Order';
                ApplicationArea = basic, suite;
                Image = SortDescending;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    GetBiggestOrder();
                end;
            }
        }
    }
    local procedure GetBiggestOrder()
    var
        salesLine: Record "Sales Line";
    begin
        salesLine.Reset();
        salesLine.SetRange("Document Type", salesLine."Document Type"::Order);
        salesLine.SetCurrentKey("Amount Including VAT");
        salesLine.Ascending(false);
        if salesLine.FindSet() then begin
            Page.Run(Page::"Sales Lines", salesLine);
        end else
            Error('No sales Order');
    end;
}
