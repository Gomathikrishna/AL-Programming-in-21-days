//Day 15 - Loops or Repetitive statements in AL programming
// To execute a block of code repeatedly until a certain condition is met
//for, foreach, while, repeat-until
//for - known number of iterations
//foreach - process on collection of items
//while - unknown number of iterations - pre-condition/entry-conrol loop
//repeat-until - unknown number of iterations - post-condition/exit-control loop
page 50116 "Looping Statements"
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
                var
                    CustomerRec: Record Customer;
                    i: Integer;
                begin
                    for i := 1 to 10 do begin
                        CustomerRec.FindFirst();
                        Message('Customer Name: %1', CustomerRec.Name);
                    end;
                end;
            }
        }
    }

    var
        myInt: Integer;
}