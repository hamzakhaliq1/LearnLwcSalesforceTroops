public with sharing class CustomLogicController {
    Account account;

    public Account CustomLogicController() {
        if(account == null) account = new Account();
        return account;
    }
    public CustomLogicController(){
        
    }

    public PageReference saveit() {
        // Add the account to the database. 
        insert account;
        // Send the user to the detail page for the new account.
        PageReference acctPage = new ApexPages.StandardController(account).view();
        acctPage.setRedirect(true);
        return acctPage;
    }
}