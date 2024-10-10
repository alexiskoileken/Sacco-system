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
    actions
    {
        addlast(processing)
        {
            action(Segmentation)
            {
                Caption = 'Segmentation';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Calculate;
                trigger OnAction()
                var
                    Segmentationcode: Codeunit "Segmentation code";
                begin
                    Segmentationcode.UpdateCustomerSegment(Rec."No.");
                end;
            }
        }
    }


}
