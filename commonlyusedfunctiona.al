//Day 17 - Commonly used functions in AL programming
//Message() - Displays a message in a message box
//Error()- Displays an error message in a message box
//Confirm() - Displays a message in a message box with an OK and Cancel button
//Get() - Retrieves a value from a record
//Find() - Finds a record in a table
//Insert() - Inserts a record in a table
//Modify() - Modifies a record in a table
//ModifyAll() - Modifies all records in a table
//DeleteAll() - Deletes all records in a table
//Delete() - Deletes a record in a table
//NEXT() - Moves to the next record in a table
//SetCurrentKey() - Sets the current key in a table
//SetRange() - Sets a range on a table
//SetFilter() - Sets a filter on a table
//CALCFIELDS() - Calculates the value of a field
//GetRange() - Retrieves the range that is set on a table
//GetRangeMin() - Retrieves the minimum value of a range that is set on a table
//GetRangeMax() - Retrieves the maximum value of a range that is set on a table
//StrMenu() - Displays a menu in a message box
//LockTable() - Locks a table
page 50107 "CommonlyUsedMethods"
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
                field(myInt; myInt)
                {
                    ApplicationArea = All;
                    trigger OnValidate()

                    begin
                        if myInt > 100 then
                            Error('Value cannot be greater than 10')
                        else
                            Message('You have entered the correct number');
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
        myInt: Integer;
}
