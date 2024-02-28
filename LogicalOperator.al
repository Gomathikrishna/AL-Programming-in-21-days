//Day 7 - Logical operators in AL programming
//AND, OR, NOT operators
page 50103 "Logical Operator"
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
                field(Subj1; Subj1)
                {
                    ApplicationArea = All;

                }
                field(Subj2; Subj2)
                {
                    ApplicationArea = All;

                }
                field(Subj3; Subj3)
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
            action("Result of AND")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if (Subj1 > 50) AND
                        (Subj2 > 50) AND
                        (Subj3 > 50) then
                        result := 'Pass'
                    else
                        result := 'Fail';

                end;
            }
            action("Result of OR")
            {
                ApplicationArea = all;
                trigger OnAction()

                begin
                    if (subj1 > 50) OR
                        (subj2 > 50) OR
                        (subj3 > 50) then
                        result := 'Pass'
                    else
                        result := 'Fail';
                end;
            }
        }
    }

    var
        Subj1: Integer;
        Subj2: Integer;
        Subj3: Integer;

        result: Text[10];

}