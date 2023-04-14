pageextension 50100 "DIN ItemListExt" extends "Item List"
{
    layout
    {
        // Add changes to page layout here
        addfirst(content)
        {
            field("DIN My Field"; Rec."DIN My Field")
            {
                ApplicationArea = All;
                Caption = 'My Field';
                ToolTip = 'Specifies the value of the My Field field.';
            }
        }
    }
}