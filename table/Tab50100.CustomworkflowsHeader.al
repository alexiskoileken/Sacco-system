/// <summary>
/// Table Custom workflows Header (ID 50100).
/// </summary>
table 50100 "Custom workflows Header"
{
    Caption = 'Custom workflows Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No_; Code[20])
        {
            Caption = 'No_';
            Editable = false;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Status; Enum "Custom Approval Enum")
        {
            Caption = 'Status';
            Editable = false;
        }
        field(4; Noseries; Code[20])
        {
            Caption = 'Noseries';
        }
    }
    keys
    {
        key(PK; No_)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        if No_ = '' then begin
            NoSeriesMgt.InitSeries('MS-CWF', xRec.Noseries, 0D, No_, Noseries);

        end;
    end;

    var
        PurchPayablesSetup: Record "Purchases & Payables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
}
