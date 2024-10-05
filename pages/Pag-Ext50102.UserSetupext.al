/// <summary>
/// PageExtension User Setup ext (ID 50102) extends Record User Setup.
/// </summary>
pageextension 50102 "User Setup ext" extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {
            field("Journal Template Name"; Rec."Journal Template Name")
            {

            }
            field("Journal Batch Name"; Rec."Journal Batch Name")
            {

            }
        }
    }
}
