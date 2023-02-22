sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'zl230222Test.MyFioriApp',
            componentId: 'SrvAuthorsObjectPage',
            entitySet: 'SrvAuthors'
        },
        CustomPageDefinitions
    );
});