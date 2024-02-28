//DAY 5 challenge - Arithmetic Operators
//addition, multiplication, subtraction, Division, Modulus
page 50100 ArithmeticOperators
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Number 1"; "Number 1")
                {
                    ApplicationArea = All;

                }
                field("Number 2"; "Number 2")
                {
                    ApplicationArea = All;

                }
                field(Result; Result)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" + "Number 2";

                end;
            }
            action(Subtraction)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" - "Number 2";

                end;
            }

            action(Multiplication)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" * "Number 2";

                end;
            }
            action(Division)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" / "Number 2";

                end;
            }
            action(Modulus)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := "Number 1" MOD "Number 2";

                end;
            }
        }
    }

    var
        "Number 1": Decimal;
        "Number 2": Decimal;
        "Result": Decimal;
}