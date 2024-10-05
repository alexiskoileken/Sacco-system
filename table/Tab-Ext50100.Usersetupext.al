/// <summary>
/// TableExtension User setup ext (ID 50100) extends Record User Setup.
/// </summary>
tableextension 50100 "User setup ext" extends "User Setup"
{
    fields
    {
        field(50100; "Journal Template Name"; Code[20])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Gen. Journal Template".Name;
            DataClassification = ToBeClassified;
        }
        field(50101; "Journal Batch Name"; Code[20])
        {
            Caption = 'Journal Batch Name';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Journal Template Name"));
        }
    }
}
