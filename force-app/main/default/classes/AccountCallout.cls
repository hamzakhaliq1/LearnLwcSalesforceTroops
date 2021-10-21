@restResource(urlMapping='/accountcallout/*')
global class AccountCallout implements Database.Batchable<sObject> , Database.Stateful , Schedulable {
    public integer count=0;
    @HTTPGET
    global static List<Account>getAllAccounts(){
        
        RestResponse res = RestContext.response;
        RestRequest req =  RestContext.request;
        
        String accid = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        System.debug(accid);
        
        return [SELECT id , Name , Phone , Type from Account where id=:accid];
    }
    
    @HTTPPOST
    global static void someList(String Name, String Phone){
        
        Account acc = new Account(Name=Name, Phone=Phone);
        insert acc;
        System.debug('Name--> '+Name + 'Phone --> '+Phone + '     Post Method is Called  '+acc.id);
        
        AccountCallout acccallout = new AccountCallout();
        Database.executeBatch(acccallout);
        
        
        
    }
    
    
    
    @HTTPPUT
    global static void someList(String Name, String Phone , String Type){
        
       Account acc = new Account(Name=Name, Phone=Phone);
        String accid = RestContext.request.requestURI.substring(RestContext.request.requestURI.lastindexof('/')+1);
        System.debug(accid.length());
        if (isValid(accid))
        {
        	
        	acc.id=accid;
        	upsert acc;    
        }
        else {
            throw new DMLException('Sorry Account ID is not valid');
        }
        
        
              System.debug('Name--> '+Name + 'Phone --> '+Phone + '     Put Method is Called  '+acc.id);
        
    }
    
    @HTTPPATCH
    global static void someList1(String Name, String Phone , String Type){
        
       Account acc = new Account(Name=Name, Phone=Phone);
        String accid = RestContext.request.requestURI.substring(RestContext.request.requestURI.lastindexof('/')+1);
        System.debug(accid.length());
        if (isValid(accid))
        {
        	
        	acc.id=accid;
        	upsert acc;    
        }
        else {
            throw new DMLException('Sorry Account ID is not valid');
        }
        
        
              System.debug('Name--> '+Name + 'Phone --> '+Phone + '     Put Method is Called  '+acc.id);
        
    }
    
    @HTTPDELETE 
    global static boolean deleteAccount(){
        RestResponse res = RestContext.response;
        RestRequest req =  RestContext.request;
        String accid = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        if (isValid(accid))
        {
       			Account acc = [SELECT id,Name from account where id=:accid];
       
            delete acc;
            return true;
        }
       
        else return false;
        
    }
    
    
    
    public static boolean isValid(String Account){
        if (Account ==null || Account=='' || [SELECT count() from Account where id=:account]<=0 || Account.length()!=18){
            return false;
        }
      return true;
        
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
	String query = 'SELECT Id, Name,Type, Phone, Industry, Intrests__c, website FROM Account';
	return Database.getQueryLocator(query);
   }
    global void execute(Database.BatchableContext BC, List<Account> scope){
        
        
        Set<String> someStrings = new Set<String>();
        for (Account acc : scope){
            
            if (someStrings.contains(acc.Name)){
                String another = acc.Name;
                Acc.Name = another + ' Duplicate';
            	System.debug(someStrings.add(acc.Name));
            }
        }
       database.saveresult[] ds =  Database.update(scope,false);
    for(database.SaveResult d : ds){
        if(d.issuccess()){
            count++;
        }
        
}
 }
    global void finish(Database.BatchableContext BC){
        
        System.debug('Total Records Updated are : '+count);
    }
    global void execute(SchedulableContext SC) {
        AccountCallout accallout = new AccountCallOut();
        Database.executeBatch(accallout);
       
   }
   public void getsomething(){
       Account acc = new Account();
       acc.Name='Hamza';
       acc.Fax='hamza';
       String v1 = '';
       acc.Industry='someIndustry';
       System.debug(acc.name);
       
   }
    
}