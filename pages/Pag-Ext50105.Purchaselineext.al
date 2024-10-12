/// <summary>
/// PageExtension Purchase line ext (ID 50105) extends Record Purchase Lines.
/// </summary>
pageextension 50105 "Purchase line ext" extends "Purchase Lines"
{
    actions
    {
        addlast(Processing)
        {
            action(Filter)
            {
                Caption = 'Filters';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Filter;
                trigger OnAction()
                var
                    startDate: Date;
                    EndDate: Date;
                begin
                    startDate := WorkDate();
                    EndDate := WorkDate();
                    Rec.Reset();
                    Rec.SetRange("Order Date", startDate, EndDate);
                    Rec.SetRange("Document Type", Rec."Document Type"::Order);
                    Rec.SetRange("Location Code", 'GREEN');
                    if Rec.FindSet() then
                        Page.Run(Page::"Purchase Lines", Rec)
                    else
                        message('Nothing found');
                    CurrPage.Close();
                end;
            }
        }
    }
}
