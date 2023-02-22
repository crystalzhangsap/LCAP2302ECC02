export default function CreateEntity(clientAPI) {
    if (clientAPI.getODataProvider('/MDKUIAPP/Services/service1.service').isDraftEnabled('SrvAuthors')) {
        return clientAPI.executeAction({
            'Name': '/MDKUIAPP/Actions/SrvAuthors/SrvAuthors_CreateEntity.action',
            'Properties': {
                'OnSuccess': ''
            }
        }).then((result) => {
            let newEntity = JSON.parse(result.data);
            return clientAPI.executeAction({
                'Name': '/MDKUIAPP/Actions/DraftSaveEntity.action',
                'Properties': {
                    'Target': {
                        'EntitySet': 'SrvAuthors',
                        'ReadLink': newEntity['@odata.readLink']
                    }
                }
            });
        });
    } else {
        return clientAPI.executeAction('/MDKUIAPP/Actions/SrvAuthors/SrvAuthors_CreateEntity.action');
    }
}