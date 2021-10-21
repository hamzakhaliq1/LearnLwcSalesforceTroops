//Apex Class

//@RestResource(urlMapping='/Accounts/*/contacts')
@RestResource(urlMapping='/Accountssss/*')
global with sharing class AccountManager{
    @HttpGet
    global static Account getAccount(){
        integer i=3,j,k=4,n=2;
        k=1;
        n=2;
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        system.debug(accountId);
        Account objAccount = [SELECT Id,Name,Type ,Phone,(SELECT Id,Name,Phone,Email FROM Contacts) FROM Account WHERE Id = :accountId LIMIT 1];
        return objAccount;
    }
    @HttpPost
    global static void  PostAccount(){
        RestRequest request = RestContext.request;
        AccountManager.Wrapper wrap = (AccountManager.Wrapper) Json.deserialize(request.requestBody.toString(),AccountManager.Wrapper.class);
        System.debug(wrap.name);
        System.debug(request.requestBody.toString());
    }
    global class Wrapper{
        webService string name;
        webservice String Phone;
    }
}


//Test  class