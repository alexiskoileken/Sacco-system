page 50103 "Test Field Group"
{
    ApplicationArea = All;
    Caption = 'Test Field Group';
    PageType = List;
    SourceTable = "Test Field Groups";
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("primary key"; Rec."primary key")
                {
                    ToolTip = 'Specifies the value of the primary key field.', Comment = '%';
                }
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(name; Rec.name)
                {
                    ToolTip = 'Specifies the value of the name field.', Comment = '%';
                }
                field(SurName; Rec.SurName)
                {
                    ToolTip = 'Specifies the value of the SurName field.', Comment = '%';
                }
            }
        }
    }
}
