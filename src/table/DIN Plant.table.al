table 50110 "DIN Plant"
{
    Caption = 'Plants';
    DataClassification = CustomerContent;
    DrillDownPageId = "DIN Plant List";
    LookupPageId = "DIN Plant List";

    fields
    {
        field(10; Spieces; Code[30])
        {
            Caption = 'Plant name';
            trigger OnValidate()
            begin
                TestField(Spieces);
            end;
        }
        field(20; Continent; Code[30])
        {
            Caption = 'Continent';
            TableRelation = "DIN Continent".ContinentName;
        }
        field(30; Quantity; Integer)
        {
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                TestField(Quantity);
            end;
        }
    }

    keys
    {
        key(PK; Spieces)
        {
            Clustered = true;
        }
        key(ContinentKey; Continent)
        {
        }
    }
}