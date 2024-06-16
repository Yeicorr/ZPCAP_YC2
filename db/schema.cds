namespace com.logali;

using {cuid} from '@sap/cds/common';


type ZDE_MEINS : String(2);

entity zorden_yc : cuid {
    Email        : String(30);
    Firstname    : String(30);
    Lastname     : String(30);
    Country      : String(30);
    Createon     : Date default $now;
    Deliverydate : DateTime;
    Orderstatus  : Integer enum {
        Open     = 1;
        Accepted = 2;
        Refused  = 3;
    };
    Imageurl     : String;
//     ItemsID      : String(4) not null;
//     Items        : Association to zitems_yc
//                    on Items.id_item = ItemsID;
}

entity zitems_yc: cuid {
   // key ID               : String(36) not null;
    key Id_Item          : String(4) not null;
        Name             : localized String(40);
        Description      : localized String(40);
        Releasedate      : Date;
        Discontinueddate : Date;
        Price            : Decimal(12, 2);
        Height           : Decimal(15, 3);
        Width            : Decimal(13, 3);
        Depth            : Decimal(12, 2);
        Quantity         : Decimal(16, 2);
        Unitofmeasure    : ZDE_MEINS;
        Order            : Association to zorden_yc;
}
