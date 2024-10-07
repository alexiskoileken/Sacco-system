/// <summary>
/// Table Custom Cue  (ID 50101).
/// </summary>
table 50101 "Custom Cue "
{
    Caption = 'Custom Cue ';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary key"; Code[20])
        {
            Caption = 'Primary key';
        }
        field(2; "Sales Order"; Decimal)
        {
            Caption = 'Sales Order';

        }
        field(3; NoOfUsers; Integer)
        {
            Caption = 'No of Users';
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
    }
    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}
