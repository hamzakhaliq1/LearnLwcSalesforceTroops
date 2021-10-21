trigger SendConfirmationEmail on Session_Speaker__c (after insert) {
    List<id> allIds = new List<id>();
    for (Session_Speaker__c newItem : trigger.New)
    {
        allIds.add(newItem.id);
    }
    
    List<Session_Speaker__c> sessionSpeakers =
            [SELECT Session__r.Name,
                    Session__r.Session_Date__c,
                    Speaker__r.First_Name__c,
                    Speaker__r.Last_Name__c,
                    Speaker__r.Email__c
             FROM Session_Speaker__c WHERE Id IN :allIds
             AND Speaker__r.Email__c <> NULL];
    		
    String [] addresses = new String []{};
        String []subjects = new String []{};
            String []messages = new String []{};
                
                for (Session_Speaker__c s :sessionSpeakers)
            {
                	addresses.add(s.Speaker__r.Email__c);
                	subjects.add('Speaker Confirmation');
            messages.add('Dear ' + s.Speaker__r.First_Name__c +
                    ',\nYour session "' + s.Session__r.Name + '" on ' +
                    s.Session__r.Session_Date__c + ' is confirmed.\n\n' +
                    'Thanks for speaking at the conference! from Salesforce Triggers' );
            }
    
    EmailManager.sendMail(addresses, subjects, messages);

}