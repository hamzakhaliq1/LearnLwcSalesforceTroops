public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
        return [
            SELECT Id, Name, Title, Phone, Email, Picture__c
            FROM Contact
            WHERE Picture__c != null
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> findContacts(String searchKey) {
        String key = '%' + searchKey + '%';
        return [
            SELECT Id, Name, Title, Phone, Email, Picture__c
            FROM Contact
            WHERE Name LIKE :key AND Picture__c != null
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static Contact getSingleContact() {
        return [
            SELECT Id, Name, Title, Phone, Email, Picture__c
            FROM Contact
            WITH SECURITY_ENFORCED
            LIMIT 1
        ];
    }
    
    @AuraEnabled
public static String createContactRecord(Contact newRecord){
    insert newRecord;
    return newRecord.Id + ' '+ newRecord.FirstName;
}

@AuraEnabled
public static String updateContactRecord(Contact recordForUpdate){ 
    update recordForUpdate;
    return  recordForUpdate.Id + ' '+ recordForUpdate.FirstName;
}
    
    public static void getThisMethod(){
        try
        {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setMethod('GET');
            request.setEndpoint('https://jsonplaceholder.typicode.com/posts');
            HttpResponse response=http.send(request);
            if (response.getStatusCode()!=200){
                System.debug('Requst was not succesffullyyy made');
            }
            else
            {
                /*
                Map<String , Object> results = (Map<String , Object>) JSON.deserializeUntyped(response.getBody());
                List<Object> animals=	(List<Object>)results.get('animals');
                for (Object o  : animals){
                    System.debug(o);
                }*/
                
                System.debug(response.getBody());
            }
            
        }catch(Exception e){
            
            System.debug(e.getMessage());
        }
    }
    public static void postmethod()
    {
        try
        {
            Http http = new Http();
            HttpRequest request= new HttpRequest();
     		request.setMethod('POST');
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');
            HttpResponse response = http.send(request);
           // if (response.getStatusCode()!=)
            
        }catch(Exception e )
        {
            System.debug(e.getMessage());
        }
    }
}