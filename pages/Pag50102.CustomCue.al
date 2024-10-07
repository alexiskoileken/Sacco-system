/// <summary>
/// Page Custom Cue  (ID 50102).
/// </summary>
page 50102 "Custom Cue "
{
    ApplicationArea = All;
    Caption = 'Custom Cue ';
    PageType = CardPart;
    SourceTable = "Custom Cue ";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(Sales)
            {
                Caption = 'Sales';

                field("Sales Order"; Rec."Sales Order")
                {
                    ToolTip = 'Specifies the value of the Sales Order field.', Comment = '%';
                    DrillDown = true;
                    trigger OnDrillDown()
                    var
                        SalesLn: Record "Sales Line";
                    begin
                        SalesLn.Reset();
                        SalesLn.SetRange("Document Type", SalesLn."Document Type"::Order);
                        SalesLn.SetCurrentKey(Amount);
                        SalesLn.Ascending(false);
                        if SalesLn.FindSet() then
                            Page.Run(Page::"Sales Lines", SalesLn);
                    end;

                }
                field(NoOfUsers; Rec.NoOfUsers)
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "Concurrent Session List";
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        Rec."Sales Order" := Sales.GetBiggestSaleOrder();
    end;

    var
        Sales: Codeunit "Sales ";
}
