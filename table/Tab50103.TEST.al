/// <summary>
/// Table TEST (ID 50103).
/// </summary>
table 50103 TEST
{
    Caption = 'TEST';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; no; Code[20])
        {
            Caption = 'no';
            TableRelation = "Test Field Groups";
        }
        field(2; name; Text[100])
        {
            Caption = 'name';
        }
        field(3; surname; Text[100])
        {
            Caption = 'surname';
        }
    }
    keys
    {
        key(PK; no)
        {
            Clustered = true;
        }
    }
}
