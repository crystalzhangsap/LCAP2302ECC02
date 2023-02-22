sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'zl230222Test.FioriApp2',
            componentId: 'SrvContactsList',
            entitySet: 'SrvContacts'
        },
        CustomPageDefinitions
    );
});