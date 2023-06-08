public with sharing class AccountHandler {
    public static Account insertNewAccount(String accountName) {
            Account acct = new Account(Name=accountName);
            
            try {
                 insert acct;
                } catch (DmlException e) {
                System.debug('A DML exception has occurred: ' + e.getMessage());
                return null;
            }
            return acct;
    }
}