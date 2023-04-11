table 50111 "DIN Continent"
{
    Caption = 'Continents';
    DataClassification = CustomerContent;
    DrillDownPageId = "DIN Continent List";
    LookupPageId = "DIN Continent List";

    fields
    {
        field(10; ContinentName; Code[30])
        {
            Caption = 'Continent name';
            trigger OnValidate()
            begin
                TestField(ContinentName);
            end;
        }
        field(20; "No. of species"; Integer)
        {
            CalcFormula = count("DIN Plant" where(Continent = field(ContinentName)));
            Caption = 'No. of species';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(PK; ContinentName)
        {
            Clustered = true;
        }
    }
}