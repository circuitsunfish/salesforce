public class AccountHandler {
    public static Account insertNewAccount(String accountName) {
            Account acct = new Account();
            acct.Name = accountName;
            try {
                 insert acct;
                } catch (DmlException e) {
                System.debug('A DML exception has occurred: ' + e.getMessage());
                return null;
            }
            ID acctID = acct.ID;
            return [SELECT Id,Name FROM Account WHERE Id =:acct.ID ];
    }
}