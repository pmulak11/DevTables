page 50115 "DIN Continent Card"
{
    ApplicationArea = All;
    Caption = 'DIN Continent Card';
    PageType = Card;
    SourceTable = "DIN Continent";
    UsageCategory = None;

    layout
    {
        area(Content)
        {
            group("My Tab")
            {
                Caption = '"My Tab"';

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
