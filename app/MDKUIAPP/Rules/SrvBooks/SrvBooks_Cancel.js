export default function Cancel(clientAPI) {
    if (clientAPI.getODataProvider('/MDKUIAPP/Services/service1.service').isDraftEnabled('SrvBooks')) {
        return clientAPI.executeAction({
            'Name': '/MDKUIAPP/Actions/DraftDiscardEntity.action',
            'Properties': {
                'Target': {
                    'EntitySet': 'SrvBooks'
                },
                'OnSuccess': '/MDKUIAPP/Actions/CloseModalPage_Cancel.action'
            }
        });
    } else {
        return clientAPI.executeAction('/MDKUIAPP/Actions/CloseModalPage_Cancel.action');
    }
}