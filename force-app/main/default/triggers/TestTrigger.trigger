trigger TestTrigger on Account (before insert) {
    
    If (Trigger.isInsert && Trigger.isbefore)
    {
        
        List<String> names = new List<String>();
        For (Account acc : Trigger.NEw)
        {
            String accName = acc.Name;
            names.add(accname);
            
        }
        System.debug(names);
        Map<String,Account>accs = new Map<String,Account>([SELECT   name from Account where Name in :names]);
        for (Account acc : Trigger.New)
        {
                if (accs.get(acc.name)!=null)
                {
                    System.debug(acc.name +'Doesnt exist');
                }
                
                else
                {
                    acc.addError('Unable to Insert Name Already exists');
                }
        }
        
    }

}