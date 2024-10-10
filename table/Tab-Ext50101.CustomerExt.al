/// <summary>
/// TableExtension Customer Ext (ID 50101) extends Record Customer.
/// </summary>
tableextension 50101 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; Segment; Enum "Segment Selection")
        {
            Caption = 'Segment';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
}
