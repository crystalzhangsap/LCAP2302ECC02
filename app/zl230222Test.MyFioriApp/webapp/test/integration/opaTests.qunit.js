sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zl230222Test/MyFioriApp/test/integration/FirstJourney',
		'zl230222Test/MyFioriApp/test/integration/pages/SrvAuthorsList',
		'zl230222Test/MyFioriApp/test/integration/pages/SrvAuthorsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SrvAuthorsList, SrvAuthorsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zl230222Test/MyFioriApp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSrvAuthorsList: SrvAuthorsList,
					onTheSrvAuthorsObjectPage: SrvAuthorsObjectPage
                }
            },
            opaJourney.run
        );
    }
);