/// <summary>
/// PageExtension Accountant RC (ID 50100) extends Record Accountant Role Center.
/// </summary>
pageextension 50100 "Accountant RC" extends "Accountant Role Center"
{
    layout
    {

    }
    actions
    {
        addbefore("G/L Reports")
        {
            group("Buid Reports")
            {
                action("Purchase order")
                {
                    ApplicationArea = basic, suite;
                    Caption = 'Purchase Order';
                    RunObject = report "Purchase Order list";
                    Image = Report;
                }
            }
        }
    }
}
