/// <summary>
/// Page Custom workflows Header list (ID 50100).
/// </summary>
page 50100 "Custom workflows Header list"
{
    ApplicationArea = All;
    Caption = 'Custom workflows Header list';
    PageType = List;
    SourceTable = "Custom workflows Header";
    UsageCategory = Lists;
    CardPageId = "Custom workflows Header Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No_; Rec.No_)
                {
                    ToolTip = 'Specifies the value of the No_ field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }

        }

    }
}
