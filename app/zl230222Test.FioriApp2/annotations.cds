using zl230222TestService as service from '../../srv/service';

annotate service.SrvContacts with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'IdentityIsRemoved',
            Value : IdentityIsRemoved,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BirthDate',
            Value : BirthDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsMarkedForDeletion',
            Value : IsMarkedForDeletion,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsConsumer',
            Value : IsConsumer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsContactPerson',
            Value : IsContactPerson,
        },
    ]
);
annotate service.SrvContacts with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'IdentityIsRemoved',
                Value : IdentityIsRemoved,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BirthDate',
                Value : BirthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsMarkedForDeletion',
                Value : IsMarkedForDeletion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsConsumer',
                Value : IsConsumer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsContactPerson',
                Value : IsContactPerson,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Latitude',
                Value : Latitude,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastChangeDateTime',
                Value : LastChangeDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InteractionContactImageURL',
                Value : InteractionContactImageURL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastChangedByUser',
                Value : LastChangedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Longitude',
                Value : Longitude,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationDateTime',
                Value : CreationDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreatedByUser',
                Value : CreatedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SpatialReferenceSystem',
                Value : SpatialReferenceSystem,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsMainContact',
                Value : IsMainContact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FullName',
                Value : FullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastName',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Department',
                Value : Department,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DepartmentName',
                Value : DepartmentName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Function',
                Value : Function,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactFunctionName',
                Value : ContactFunctionName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaritalStatus',
                Value : MaritalStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaritalStatusName',
                Value : MaritalStatusName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CityName',
                Value : CityName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StreetName',
                Value : StreetName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AddressHouseNumber',
                Value : AddressHouseNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Language',
                Value : Language,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LanguageName',
                Value : LanguageName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmailAddress',
                Value : EmailAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PhoneNumber',
                Value : PhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MobileNumber',
                Value : MobileNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FaxNumber',
                Value : FaxNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HasMktgPermissionForDirectMail',
                Value : HasMktgPermissionForDirectMail,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CountryName',
                Value : CountryName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AddressRegion',
                Value : AddressRegion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RegionName',
                Value : RegionName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GenderCode',
                Value : GenderCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GenderCodeName',
                Value : GenderCodeName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ContactPostalCode',
                Value : ContactPostalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormOfAddress',
                Value : FormOfAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormOfAddressName',
                Value : FormOfAddressName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WebsiteURL',
                Value : WebsiteURL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValidationStatus',
                Value : ValidationStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValidationStatusName',
                Value : ValidationStatusName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Industry',
                Value : Industry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IndustryName',
                Value : IndustryName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CorporateAccountName',
                Value : CorporateAccountName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
