export default function UpdateEntity(clientAPI) {
    if (clientAPI.getODataProvider('/MDKUIAPP/Services/service1.service').isDraftEnabled('SrvBooks')) {
        return clientAPI.executeAction({
            'Name': '/MDKUIAPP/Actions/SrvBooks/SrvBooks_UpdateEntity.action',
            'Properties': {
                'OnSuccess': ''
            }
        }).then((result) => {
            return clientAPI.executeAction({
                'Name': '/MDKUIAPP/Actions/DraftSaveEntity.action',
                'Properties': {
                    'Target': {
                        'EntitySet': 'SrvBooks'
                    }
                }
            });
        });
    } else {
        return clientAPI.executeAction('/MDKUIAPP/Actions/SrvBooks/SrvBooks_UpdateEntity.action');
    }
}