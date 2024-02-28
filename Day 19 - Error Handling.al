//Day 19  - Error Handling in AL programming
//Catching and managing errors
//Syntax Error - Compile time error
//Run time error - Error that occurs when the program is running
//try method - used to catch the error
page 50119 "Error Handling"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    // layout
    // {
    //     area(Content)
    //     {
    //         group(GroupName)
    //         {
    //             field(Name; NameSource)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if MyTryMethod then
                        Message('No error occured')
                    else
                        Message('An error occured');

                end;
            }
        }
    }

    var
        myInt: Integer;

    [TryFunction]
    local procedure MyTryMethod()

    begin
        error('An error occured');
    end;


}