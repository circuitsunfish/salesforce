public with sharing class ContactAndLeadSearch {
 //   public ContactAndLeadSearch() {
//
 //   }
    public static List<List<SObject>> searchContactsAndLeads (String searchQueryString) {
        
        List<List<SObject>> searchResultsList = new List<List<SObject>>();
        try {
            searchResultsList = [FIND :searchQueryString IN ALL FIELDS
         RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
            
           } catch (DmlException e) {
           System.debug('A DML exception has occurred: ' + e.getMessage());
           return null;
       }
       return searchResultsList;
        
    }
}