export default function NavToEdit(clientAPI) {
    if (clientAPI.getODataProvider('/MDKUIAPP/Services/service1.service').isDraftEnabled('SrvAuthors')) {
        return clientAPI.executeAction({
            'Name': '/MDKUIAPP/Actions/DraftEditEntity.action',
            'Properties': {
                'Target': {
                    'EntitySet': 'SrvAuthors'
                },
                'OnSuccess': '/MDKUIAPP/Actions/SrvAuthors/NavToSrvAuthors_Edit.action'
            }
        });
    } else {
        return clientAPI.executeAction('/MDKUIAPP/Actions/SrvAuthors/NavToSrvAuthors_Edit.action');
    }
}