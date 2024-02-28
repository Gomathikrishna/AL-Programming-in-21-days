//Day 18 - Other methods in AL programming
//Reset() - It resets the record variable to its initial state. 
//DeleteAll() - to delete all records in a table that meet the current filter criteria. 
//Init() - to initialize a record variable to its initial state.
//Insert() - to insert a new record in a table.
//Next() - to move to the next record in a table.

table 50100 CompanySales
{
    DataClassification = CustomerContent;
    TableType = Temporary;
    fields
    {
        field(1; CompanyName; Text[30])
        {
            Caption = 'Company Name';
            DataClassification = CustomerContent;
        }
        field(2; TotalSales; Decimal)
        {
            Caption = 'Total Sales';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(Key1; CompanyName)
        {
            Clustered = true;
        }
    }
}
page 50118 CompanySales
{
    Caption = 'Company Sales';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = CompanySales;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(CompanyName; Rec.CompanyName)
                {
                    ApplicationArea = All;
                }
                field(TotalSales; Rec.TotalSales)
                {
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    var
                        Cust: Record Customer;
                    begin
                        Cust.ChangeCompany(Rec.CompanyName);
                        Page.Run(Page::"Customer List", Cust);
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        Companylist: Record Company;
        Cust: Record Customer;
        TotalSales: Decimal;
    begin
        Rec.Reset();
        if not Rec.IsEmpty then
            Rec.DeleteAll();
        Companylist.Reset();
        if Companylist.FindSet() then
            repeat
                TotalSales := 0;
                Cust.ChangeCompany(Companylist.Name);
                Cust.Reset();
                Cust.SetAutoCalcFields("Sales (LCY)");
                if Cust.FindSet() then
                    repeat
                        TotalSales += Cust."Sales (LCY)";
                    until Cust.Next() = 0;
                Rec.Init();
                Rec.CompanyName := Companylist.Name;
                Rec.TotalSales := TotalSales;
                Rec.Insert();
            until Companylist.Next() = 0;
    end;
}