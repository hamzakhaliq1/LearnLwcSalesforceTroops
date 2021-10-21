public class Dummy {

    public void getIdNumber()
    {
        Account acc = new Account (Name='Ali');
        insert acc;
        ID accountId = acc.id;
        System.debug(accountId);
    }
}