/// <summary>
/// Report Process Annual Trannsaction (ID 50101).
/// </summary>
report 50101 "Process Annual Trannsaction"
{
    ApplicationArea = All;
    Caption = 'Process Annual Trannsaction';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    dataset
    {
        dataitem(customer; customer)
        {
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Options';
            column(No; "No.")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Filters)
                {
                    field(ExpenseGlAcc; ExpenseGlAcc)
                    {
                        ToolTip = 'Specifies the Expense G/L Account';
                        TableRelation = "G/L Account" where("Direct Posting" = const(true));
                    }
                    field(TaxGlAcc; TaxGlAcc)
                    {
                        ToolTip = 'Specifies the Tax G/L Account';
                        TableRelation = "G/L Account" where("Direct Posting" = const(true));
                    }
                    field(FeesIncomeGlAcc; FeesIncomeGlAcc)
                    {
                        ToolTip = 'Specifies the fees income G/L Account';
                        TableRelation = "G/L Account" where("Direct Posting" = const(true));
                    }
                    field(PaymentGlAcc; PaymentGlAcc)
                    {
                        ToolTip = 'Specifies the payment G/L Account';
                        TableRelation = "G/L Account" where("Direct Posting" = const(true));
                    }

                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        if ExpenseGlAcc = '' then Error(StrSubstNo(EmptyErrorMsg), 'Expense G/L Account');
        if TaxGlAcc = '' then Error(StrSubstNo(EmptyErrorMsg), 'Tax G/L Account');
        if FeesIncomeGlAcc = '' then Error(StrSubstNo(EmptyErrorMsg), 'Fees income G/L Account');
        if PaymentGlAcc = '' then Error(StrSubstNo(EmptyErrorMsg), 'Payment G/L Account');

    end;

    var
        ExpenseGlAcc: Code[20];
        TaxGlAcc: Code[20];
        FeesIncomeGlAcc: Code[20];
        PaymentGlAcc: Code[20];
        EmptyErrorMsg: Label 'Please enter the %1 field';

}
