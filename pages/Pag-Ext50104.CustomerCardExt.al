/// <summary>
/// PageExtension Customer Card Ext  (ID 50104) extends Record Customer Card.
/// </summary>
pageextension 50104 "Customer Card Ext " extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Segment; Rec.Segment)
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the segment state';
            }
        }
    }
    trigger OnOpenPage()
    var
        Segmentationcode: Codeunit "Segmentation code";
        customer: Record Customer;
    begin
        Segmentationcode.UpdateCustomerSegment(customer."No.");
    end;


}
