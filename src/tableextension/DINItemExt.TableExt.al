tableextension 50100 "DIN ItemExt" extends Item
{
    fields
    {
        modify("No.")
        {
            Caption = 'Item Number';
        }
        field(50100; "DIN My Field"; Code[20])
        {
            Caption = 'My Field';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(MyKey; "DIN My Field")
        {
        }
    }
}