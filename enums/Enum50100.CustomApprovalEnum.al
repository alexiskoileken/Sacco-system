/// <summary>
/// Enum Custom Approval Enum (ID 50100).
/// </summary>
enum 50100 "Custom Approval Enum"
{
    Extensible = false;

    value(0; Open)
    {
        Caption = 'Open';
    }
    value(1; Pending)
    {
        Caption = 'Pending';
    }
    value(2; Approved)
    {
        Caption = 'Approved';
    }
    value(3; Rejected)
    {
        Caption = 'Rejected';
    }
}
