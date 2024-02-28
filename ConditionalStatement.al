//Day 6 - Conditional statement and relational operators
//Conditional Statements - 
//Vote eligibilty program
page 50101 "Conditional and Relational"
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
                field(Age; Age)
                {
                    ApplicationArea = All;
                    Caption = 'Enter your age to check your eligibility to vote';
                    trigger OnValidate()
                    begin
                        if Age <= 18 then
                            Message(Text002)
                        else
                            Message(Text001);

                    end;

                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    var
        Age: Integer;
        Text001: Label 'Eligible to vote';
        Text002: Label 'Not eligible to vote';
}