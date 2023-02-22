sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'zl230222Test.FioriApp2',
            componentId: 'SrvContactsObjectPage',
            entitySet: 'SrvContacts'
        },
        CustomPageDefinitions
    );
});