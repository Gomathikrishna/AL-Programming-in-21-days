//Day 9 - List and Disctionary in AL programming
//List - Strongly typed - hold multiple values of same datatype
//Dictionary - Key value pair - hold multiple values of different datatype
page 50105 ListAndDictionary
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
            action(List)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    EmployeeNames: List of [Text[50]];
                    EmployeeAge: List of [Integer];
                begin
                    EmployeeNames.add('Manju');
                    EmployeeNames.add('Krishna');
                    EmployeeNames.add('Vijay');
                    EmployeeNames.add('Ramya');
                    EmployeeNames.add('Srimathy');

                    Message(EmployeeNames.Get(1));
                end;
            }

            action(Dictionary)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    EmployeeDetails: Dictionary of [Code[20], Text[50]];
                begin
                    EmployeeDetails.Add('Manju', '25');
                    EmployeeDetails.Add('Krishna', '26');
                    EmployeeDetails.Add('Vijay', '27');
                    EmployeeDetails.Add('Ramya', '28');
                    EmployeeDetails.Add('Srimathy', '29');

                    Message(EmployeeDetails.Get('Manju'));
                end;
            }
        }
    }

    // var
    //     myInt: Integer;
}