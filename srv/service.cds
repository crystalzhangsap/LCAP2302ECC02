using { Marketing_Campaigns } from './external/Marketing_Campaigns.cds';

using { Marketing_Contact } from './external/Marketing_Contact.cds';

using { zl230222Test as my } from '../db/schema';

using zl230222Test from '../db/schema';

@path : 'service/zl230222Test'
service zl230222TestService
{
    annotate SrvBooks with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'BooksRole' ] }
    ];

    annotate SrvContacts with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'BooksRole' ] }
    ];

    entity SrvAuthors as
        projection on my.Authors;

    entity SrvBooks as
        projection on my.Books;

    entity SrvContacts as
        projection on Marketing_Contact.Contacts;

    entity SrvCampaigns as
        projection on Marketing_Campaigns.Campaigns;
}

annotate zl230222TestService with @requires :
[
    'authenticated-user'
];
