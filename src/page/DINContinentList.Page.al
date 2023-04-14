page 50101 "DIN Continent List"
{
    ApplicationArea = All;
    Caption = 'DIN Continent List';
    CardPageId = "DIN Continent Card";
    PageType = List;
    SourceTable = "DIN Continent";
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'GroupName';
                field(ContinentName; Rec.ContinentName)
                {
                    Caption = 'Continent name';
                    ToolTip = 'Specifies the value of the Continent name field.';
                }
                field("No. of species"; Rec."No. of species")
                {
                    Caption = 'No. of species';
                    ToolTip = 'Specifies the value of the No. of species field.';
                }
            }
        }
    }
}