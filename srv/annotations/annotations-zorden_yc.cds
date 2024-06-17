using {ServiceCatalog as Srv} from '../service';
using from './annotations-zitems_yc';

annotate Srv.Order with {
    ID           @title: 'Product';
    Email        @mandatory;
    Firstname    @title: 'Firstname';
    Lastname     @title: 'Lastname';
    Country      @title: 'Country';
    Createon     @title: 'Createon'  @readonly;
    Deliverydate @title: 'Deliverydate';
    Orderstatus  @title: 'Status';
    Imageurl     @title: 'Image';
};

annotate Srv.Order with @(
    UI.HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>Order}',
        TypeNamePlural: '{i18n>Orders}',
        Title         : {Value: ID},
        Description   : {Value: Email}
    },
    UI.FieldGroup #Image         : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            Label: 'Image',
            Value: Imageurl,
        }, ],
    },
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>id}',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'email',
                Value: Email,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>firstname}',
                Value: Firstname,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>lastname}',
                Value: Lastname,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>country}',
                Value: Country,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>createon}',
                Value: Createon,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>deliverydate}',
                Value: Deliverydate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>orderstatus}',
                Value: Orderstatus,
            },
        ],
    },
    UI.SelectionFields           : [
        Country,
        Firstname,
        Createon
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'email',
            Value: Email,
        },
        {
            $Type: 'UI.DataField',
            //Label: 'firstname',
            Label: '{i18n>firstname}',
            Value: Firstname,
        },
        {
            $Type: 'UI.DataField',
            //Label: 'lastname',
            Label: '{i18n>lastname}',
            Value: Lastname,
        },
        {
            $Type: 'UI.DataField',
            //Label: 'country',
            Label: '{i18n>country}',
            Value: Country,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>createon}',
            Value: Createon,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>deliverydate}',
            Value: Deliverydate,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>orderstatus}',
            Value: Orderstatus,
        },
    ],
    UI.Facets                    : [{
        $Type : 'UI.CollectionFacet',
        Facets: [{
            $Type : 'UI.ReferenceFacet',
            Target: 'Items/@UI.FieldGroup#Items',
        }]
    }]
);
