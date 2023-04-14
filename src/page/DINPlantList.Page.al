page 50100 "DIN Plant List"
{
    ApplicationArea = All;
    Caption = 'DIN Plant List';
    CardPageId = "DIN Plant Card";
    PageType = List;
    SourceTable = "DIN Plant";
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'GroupName';
                field(Spieces; Rec.Spieces)
                {
                    Caption = 'Plant name';
                    StyleExpr = PlantStyleExpr;
                    ToolTip = 'Specifies the value of the Plant name field.';
                }
                field(Continent; Rec.Continent)
                {
                    Caption = 'Continent';
                    ToolTip = 'Specifies the value of the Continent field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                    StyleExpr = PlantStyleExpr;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
            }
        }
    }

    var
        PlantStyleExpr: Text;

    trigger OnAfterGetRecord()
    begin
        if Rec.Quantity > 0 then
            PlantStyleExpr := 'Favorable'
        else
            PlantStyleExpr := 'Unfavorable';
    end;
}