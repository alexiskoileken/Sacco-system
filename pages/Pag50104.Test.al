/// <summary>
/// Page Test (ID 50104).
/// </summary>
page 50104 Test
{
    ApplicationArea = All;
    Caption = 'Test';
    PageType = List;
    SourceTable = TEST;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(no; Rec.no)
                {
                    ToolTip = 'Specifies the value of the no field.', Comment = '%';
                }
                field(name; Rec.name)
                {
                    ToolTip = 'Specifies the value of the name field.', Comment = '%';
                }
                field(surname; Rec.surname)
                {
                    ToolTip = 'Specifies the value of the surname field.', Comment = '%';
                }
            }
        }
    }
}
