//Day 12 - Access Modifiers in BC
//Encapsulation, Maintainability, prevent misuese, Secure
//Internal, Local, protected, public

table 50101 "AccessModifier"
{
    DataClassification = ToBeClassified;
    Access = Internal;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}