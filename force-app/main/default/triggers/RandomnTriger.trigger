trigger RandomnTriger on Account (before insert) {
    
    if (Trigger.isbefore && Trigger.isinsert)
    {
        for (Account acc : Trigger.New)
        {
            if (Acc.name=='someName')
            {
                  
            }
                
        }
    }
    
    
}