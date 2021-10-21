@RestResource(urlmapping='/json/*')
global with sharing class JsonGenerator {
    
    @HTTPGet
    global static void getRecordsCustomised(){
        list <Account>accs;
        
        RestResponse res = RestContext.response;
        RestRequest req =  RestContext.request;
        
        String accid = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        
    
        List<Account> accList = [SELECT Id, Name , Phone , (SELECT id , Name , email from Contacts) from Account where id =:accid];
 
if(!accList.isEmpty()){
    System.JSONGenerator gen = JSON.createGenerator(true);
    gen.writeStartObject();     
    gen.writeFieldName('AccountList');
    gen.writeStartArray();
    for(Account acc :accList){
        List<Contact> c = acc.Contacts;
        gen.writeStartObject();
        
        gen.writeStringField('Id', acc.Id);
        
        gen.writeStringField('Name', acc.Name);
        
        if (acc.Phone !=null)
        gen.writeStringField('Phone', acc.Phone);
        
        //gen.writeFieldName('Contacts');
        if (c!=null)
        gen.writeObjectField('Contacts', c);

       // gen.writeStartArray();
        
       /* for (Contact ct : c)
        {
            
            
         	gen.writeStringField('ID' , ct.id);
        	gen.writeStringField('Name' , ct.Name);
        	gen.writeStringField('Email' , ct.email);   
        }*/
         
        
        
        gen.writeEndObject();
    }
    gen.writeEndArray();
    gen.writeEndObject();
   
    String jsonData = gen.getAsString();
    //jsonData.replace('\n', '');
    System.debug('jsonData-' + jsonData);
    res.responseBody = Blob.valueOf(jsonData);
    
    //return jsonData;
}
  // return null;
        
    }
    
    
	
}