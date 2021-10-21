trigger OrderEventTrigger on Order_Event__e (after insert) {
    
    List<Task> tasks = new List<Task>();
    // Get queue Id for case owner
   // Group queue = [SELECT Id FROM Group WHERE Name='Regional Dispatch' AND Type='Queue'];
    String usr = Userinfo.getUserId();
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.has_shipped__c == true) {
            // Create Case to dispatch new team.
            Task task = new Task();
            task.Priority = 'High';
           task.subject= 'Follow up on shipped order ' + event.Order_Number__c;
                
            task.OwnerId = usr;
            tasks.add(task);
        }
   }
    // Insert all cases corresponding to events received.
    insert tasks;



}