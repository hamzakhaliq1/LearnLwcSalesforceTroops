trigger CountContacts on Account (before insert , before update) {
    
    integer counter;
    for (Account acc : [SELECT id , Name , (Select id , name from contacts) from Account where id in :Trigger.New])
    {
        counter=0;
        for (Contact c : acc.Contacts)
        {
            counter++;
        }
         
       //SavePoint sp = Database.setSavepoint();
        acc.Number_of_Contacts__c=counter;
        //Database.rollback(sp);
    }

}