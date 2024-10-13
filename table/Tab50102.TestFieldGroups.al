/// <summary>
/// Table Test Field Groups (ID 50102).
/// </summary>
table 50102 "Test Field Groups"
{
    Caption = 'Test Field Groups';
    DataClassification = ToBeClassified;
    LookupPageId = "Test Field Group";
    DrillDownPageId = "Test Field Group";

    fields
    {
        field(1; "primary key"; Code[20])
        {
            Caption = 'primary key';
        }
        field(2; No; Code[20])
        {
            Caption = 'No';
        }
        field(3; name; Text[100])
        {
            Caption = 'name';
        }
        field(4; SurName; Text[100])
        {
            Caption = 'SurName';
        }

    }
    keys
    {
        key(PK; "primary key")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Brick; No, name, SurName) { }
    }
}
