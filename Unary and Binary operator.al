//Day 8 - Unary and binary Operator
/*
(fields in records), [ ] (indexing), () (parentheses), :: (scope)
NOT, - (unary), + (unary)
*,/,DIV, MOD, AND, XOR
+, -, OR
, <. >=, <=, = <>, IN
.. (range)
*/
//Symbols
//number1:=number2+number3
page 50104 "Unary and Binary"
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
                field(Number1; Number1)
                {
                    ApplicationArea = All;
                    Caption = 'Unary Value';
                    trigger OnValidate()

                    begin
                        if NOT (Number1 > 0) then
                            ERROR('Number1 should be greater than 0');
                    end;
                }
                field(Number2; Number2)
                {
                    ApplicationArea = All;
                    Caption = 'Binary Value';
                }
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Caption = 'Result';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Unary)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Number1 := -Number1;
                    Message('Number1 is %1', Number1);
                end;
            }
            action(Binary)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := Number1 + Number2;
                    Message('Result of Binary is %1', Result);
                end;

            }
        }
    }

    var
        Number1: Integer;
        Number2: Integer;
        Result: Integer;
}