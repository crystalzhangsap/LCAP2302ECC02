export default function CreateEntity(clientAPI) {
    if (clientAPI.getODataProvider('/MDKUIAPP/Services/service1.service').isDraftEnabled('SrvBooks')) {
        return clientAPI.executeAction({
            'Name': '/MDKUIAPP/Actions/SrvBooks/SrvBooks_CreateEntity.action',
            'Properties': {
                'OnSuccess': ''
            }
        }).then((result) => {
            let newEntity = JSON.parse(result.data);
            return clientAPI.executeAction({
                'Name': '/MDKUIAPP/Actions/DraftSaveEntity.action',
                'Properties': {
                    'Target': {
                        'EntitySet': 'SrvBooks',
                        'ReadLink': newEntity['@odata.readLink']
                    }
                }
            });
        });
    } else {
        return clientAPI.executeAction('/MDKUIAPP/Actions/SrvBooks/SrvBooks_CreateEntity.action');
    }
}