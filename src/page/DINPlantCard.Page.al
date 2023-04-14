page 50102 "DIN Plant Card"
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

    actions
    {
        area(Creation)
        {
            action(CreationAction)
            {
                Caption = 'CreationAction';
                Image = Add;
                trigger OnAction()
                begin
                    Message('akcja1');
                end;
            }
        }
        area(Processing)
        {
            action(ProcessingAction)
            {
                Caption = 'ProcessingAction';
                trigger OnAction()
                begin
                    Message('akcja2');
                end;
            }
        }
        area(Navigation)
        {
            action(NavAction)
            {
                Caption = 'NavAction';
                trigger OnAction()
                begin
                    Message('akcja3');
                end;
            }
        }
        area(Reporting)
        {
            action(ReportingAction)
            {
                Caption = 'ReportingAction';
                trigger OnAction()
                begin
                    Message('akcja4');
                end;
            }
        }
        area(Promoted)
        {
            actionref(CreationAction_Promoted; CreationAction)
            {
            }
        }
    }
}
