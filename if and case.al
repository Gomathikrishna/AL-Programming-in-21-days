//Day 10 - If and case statements in AL programming
//Conditional statements are used to perform different actions based on different conditions.
//To test some conditions
page 50106 "IfandSwitch"
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
                field(age; age)
                {
                    ApplicationArea = All;
                    trigger OnValidate()

                    begin
                        case age of
                            0 .. 18:
                                Message('You are a child');
                            19 .. 60:
                                Message('You are an adult');
                            61 .. 100:
                                Message('You are a senior citizen');
                            else
                                Message('You are not a human');
                        end;


                    end;

                }
                field(currentage; currentage)
                {
                    ApplicationArea = All;
                    trigger OnValidate()

                    begin
                        if currentage < 18 then begin
                            Message('You are a child');
                            Message('Try a different age');
                        end
                        else
                            if currentage < 60 then
                                Message('You are an adult')
                            else
                                if currentage < 100 then
                                    Message('You are a senior citizen')
                                else
                                    Message('You are not a human');

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
        age: Integer;
        currentage: Integer;
}