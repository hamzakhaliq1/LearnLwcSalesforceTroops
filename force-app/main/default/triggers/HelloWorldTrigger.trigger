trigger HelloWorldTrigger on Account (before insert) {
    if  (Trigger.isInsert)
    {
            if  (Trigger.isBefore)
            {
                System.debug('Before Trigger Fired');
            }
        else if (Trigger.isAfter)
        {
            System.debug('After Trigger Fired');
        }
              
    }
    else if (Trigger.IsDelete)
    {
            System.debug('Delete Trigger');
    }

}