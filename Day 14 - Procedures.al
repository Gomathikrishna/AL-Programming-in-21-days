//Day 14 - Procedures in AL programming
//Purpose: Reusability of code
//DRY - Don't Repeat Yourself
//Modularity, Maintainability, Readability, Reusability, debugging
//Objects in BC - Table, Page, Codeunit, Report
page 50115 "Procedure Example"
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
                    MyProcedure();
                end;
            }
            action(ActionName1)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyProcedure2();
                end;
            }
        }
    }

    var
        myInt: Integer;

    procedure MyProcedure()
    var
        myInt: Integer;
    begin
        Message('Hello World! I am in my procedure');

    end;

    local procedure MyProcedure2()
    var
        myInt: Integer;
    begin
        myInt := 10;
        Message('Hello World! I am in my procedure2 %1', myInt);
        myInt := myInt + 10;
        Message('Hello World! I am in my procedure2 %1', myInt);

    end;
}