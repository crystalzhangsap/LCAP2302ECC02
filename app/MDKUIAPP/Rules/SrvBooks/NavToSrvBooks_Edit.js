export default function NavToEdit(clientAPI) {
    if (clientAPI.getODataProvider('/MDKUIAPP/Services/service1.service').isDraftEnabled('SrvBooks')) {
        return clientAPI.executeAction({
            'Name': '/MDKUIAPP/Actions/DraftEditEntity.action',
            'Properties': {
                'Target': {
                    'EntitySet': 'SrvBooks'
                },
                'OnSuccess': '/MDKUIAPP/Actions/SrvBooks/NavToSrvBooks_Edit.action'
            }
        });
    } else {
        return clientAPI.executeAction('/MDKUIAPP/Actions/SrvBooks/NavToSrvBooks_Edit.action');
    }
}