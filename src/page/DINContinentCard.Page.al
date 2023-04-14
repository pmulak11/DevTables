page 50103 "DIN Continent Card"
{
    ApplicationArea = All;
    Caption = 'DIN Continent Card';
    PageType = Card;
    SourceTable = "DIN Continent";
    UsageCategory = None;
    //DelayedInsert = true;
    //InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group("My Tab")
            {
                Caption = 'My Tab';
                Visible = IsContinentVisible;

                field(ContinentName; Rec.ContinentName)
                {
                    Caption = 'Continent name';
                    Editable = IsContinentEditable;
                    ToolTip = 'Specifies the value of the Continent name field.';
                }
                field("No. of species"; Rec."No. of species")
                {
                    Caption = 'No. of species';
                    ToolTip = 'Specifies the value of the No. of species field.';
                }
                field(IntTest; IntTest)
                {
                    Caption = 'to jest zmienna';
                    trigger OnValidate()
                    begin
                        ValidateIntTest();
                    end;

                    trigger OnAssistEdit()
                    begin
                        IntTest := 200;
                        ValidateIntTest();
                    end;
                }
            }
            group("My Tab2")
            {
                Caption = 'My Tab';
                Visible = not IsContinentVisible;

                field("No. of species2"; Rec."No. of species")
                {
                    Caption = 'No. of species';
                    ToolTip = 'Specifies the value of the No. of species field.';
                }
                field(IntTest2; IntTest)
                {
                    Caption = 'to jest zmienna';
                    trigger OnValidate()
                    begin
                        ValidateIntTest();
                    end;

                    trigger OnAssistEdit()
                    begin
                        IntTest := 200;
                        ValidateIntTest();
                    end;
                }
            }
            part(Plants; "DIN Plant ListPart")
            {
                Caption = 'DIN Plant ListPart';
                SubPageLink = Continent = field(ContinentName);
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ShowHide)
            {
                Caption = 'ShowHide';
                trigger OnAction()
                begin
                    IsContinentVisible := not IsContinentVisible;
                end;
            }
        }
    }
    var
        IsContinentEditable: Boolean;
        IsContinentVisible: Boolean;
        IntTest: Integer;

    trigger OnInit()
    begin
        IsContinentVisible := true;
    end;

    local procedure ValidateIntTest()
    begin
        if IntTest > 100 then
            Error('Bad value');
        IsContinentEditable := IntTest < 50;
    end;
}
