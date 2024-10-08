/// <summary>
/// PageExtension Customer List ext (ID 50103) extends Record Customer List.
/// </summary>
pageextension 50103 "Customer List ext" extends "Customer List"
{
    actions
    {
        addafter(ApplyTemplate)
        {
            action("Annual transaction")
            {
                Caption = 'Annual Transaction';
                Promoted = true;
                PromotedCategory = Process;
                Image = Transactions;
                trigger OnAction()
                var
                    Cust: Record Customer;
                begin
                    Cust.Reset();
                    Cust.SetRange("No.", Rec."No.");
                    if Cust.FindFirst() then
                        Report.Run(Report::"Process Annual Trannsaction", true, false, Cust);
                end;
            }
        }
    }
    trigger OnOpenPage()
    var

    begin
        Rec.Reset();
        Rec.SetRange("Location Code", 'Yellow');
        if Rec.FindSet() then
            Page.Run(Page::"Customer List", Rec);
    end;
}
