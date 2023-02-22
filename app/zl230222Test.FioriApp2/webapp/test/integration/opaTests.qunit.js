sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zl230222Test/FioriApp2/test/integration/FirstJourney',
		'zl230222Test/FioriApp2/test/integration/pages/SrvContactsList',
		'zl230222Test/FioriApp2/test/integration/pages/SrvContactsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SrvContactsList, SrvContactsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zl230222Test/FioriApp2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSrvContactsList: SrvContactsList,
					onTheSrvContactsObjectPage: SrvContactsObjectPage
                }
            },
            opaJourney.run
        );
    }
);