//Day 13 - Built-in functions in AL programming
//Predefined functions to perform various operations and tasks
//Interaction Methods - Message, Confirm, StrMenu, Error
//String Functions - strLen, LowerCase, UpperCase, SubStr, StrPos, StrReplace, StrSplit, StrFilter
//Date Functions - Date2DMY, Date2DWY, CalcDate
//Number Functions - round, Ads, Power, Random, Randomize
//Array Functions - ArrayLen, CompressArray, CopyArray
//List Functions - Add, Contains, Get, Set, Insert, Remove, RemoveAt, Count, AddRangem IndexOf, Reverse
//System Functions - UserId, CompanyName, Today, Time, WorkDate
//Variable Functions - Clear, ClearAll, Evaluate, Format
page 50114 "BuiltIn Functions"
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
                field(InputValue; InputValue)
                {
                    ApplicationArea = All;
                    Caption = 'Enter any value';
                    trigger OnValidate()
                    var
                        myText: Text[20];
                        myInteger: Integer;

                    begin
                        myInteger := 3;
                        myText := Format(myInteger); //to convert the data type
                        if StrLen(InputValue) = 1 then
                            if (InputValue[1] >= 'A') and (InputValue[1] <= 'Z') then
                                Message('You have entered a Capital Letter')
                            else
                                if (InputValue[1] >= 'a') and (InputValue[1] <= 'z') then
                                    Message('You have entered a Small Letter')
                                else
                                    if (InputValue[1] >= '0') then
                                        Message('You have entered a Number')
                                    else
                                        Message('You have entered a Special Character')

                    end;


                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        InputValue: Text[1];
}