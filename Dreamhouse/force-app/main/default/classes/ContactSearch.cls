public with sharing class ContactSearch {
 //   public ContactSearch() {
 //
 //   }
    public static List<Contact> searchForContacts( String lastName, String mailingPostalCode){
        List<Contact> foundContacts = new List<Contact>();
        try {
             foundContacts = [SELECT Id, Name FROM Contact WHERE LastName = :lastName AND MailingPostalCode = :mailingPostalCode];
            } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        }
        return foundContacts;

    }
}