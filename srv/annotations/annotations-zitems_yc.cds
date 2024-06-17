using {ServiceCatalog as Srv} from '../service';

annotate Srv.Items with {
    Name @title : '{i18n>name}';
};

annotate Srv.Items with @(
UI.FieldGroup #Items         : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Name,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Description,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Releasedate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Discontinueddate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Price,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Height,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Width,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Depth,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Quantity,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>name}',
                Value: Unitofmeasure,
            },
        ]
    }
);