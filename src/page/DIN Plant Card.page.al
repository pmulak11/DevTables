page 50114 "DIN Plant Card"
{
    ApplicationArea = All;
    Caption = 'DIN Plant Card';
    PageType = Card;
    SourceTable = "DIN Plant";
    UsageCategory = None;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
            }
            group(Species)
            {
                Caption = ' Species';

                field(Spieces; Rec.Spieces)
                {
                    Caption = 'Plant name';
                    ToolTip = 'Specifies the value of the Plant name field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field(Continent; Rec.Continent)
                {
                    Caption = 'Continent';
                    ToolTip = 'Specifies the value of the Continent field.';
                }
            }
        }
    }
}
