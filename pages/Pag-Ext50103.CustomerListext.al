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
                RunObject = report "Process Annual Trannsaction";
            }
        }
    }
}
