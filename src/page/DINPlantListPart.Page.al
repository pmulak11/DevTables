page 50104 "DIN Plant ListPart"
{
    ApplicationArea = All;
    Caption = 'DIN Plant ListPart';
    PageType = ListPart;
    SourceTable = "DIN Plant";
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            repeater(rep)
            {
                Caption = 'rep';
                field("Plant Name"; Rec.Spieces)
                {
                    Caption = 'Plant name';
                }
            }
        }
    }
}