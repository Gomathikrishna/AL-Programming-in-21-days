//Day 11 - System Defined Variables
//Declared and initialized for use in application development
//Rec -  Specifies the current record, including the changes made to it
//xRec - Specifies the original value of the records before changes
//CurrPage - Specifies the current page
//CurrReport - Specifies the current report
//RequestOptionPage - Specifies the current request option page for current report
//CurrFieldNo - Specifies the current field number
page 50108 "SystemDefinedVariables"
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
                    if myInt >= 10 then
                        CurrPage.SaveRecord()


                    else
                        Error('Negative value not allowed');

                end;

            }
        }
    }

    var
        myInt: Integer;


}


report 50101 "SystemDefinedVariable"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            column(Name; Name)
            {

            }
        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {
    //                     ApplicationArea = All;

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }

    rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
    }

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        if CurrReport.Preview then
            Message('Previewing report');
    end;


    var
        myInt: Integer;
}