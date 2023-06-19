//https://dev.to/aellon/how-to-view-apex-code-coverage-in-vs-code-4643
//The verifications are done by calling the System.assertEquals() method, which takes two parameters: the first is the expected value, and the second is the actual value. There is another version of this method that takes a third parameter—a string that describes the comparison being done, which is used in testBoilingPoint(). This optional string is logged if the assertion fails.
@isTest
private class TestVerifyDate {
    @isTest static void testEndOfMonthDate() {
        // This method should correctly return the end of month for a date
        //https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_format
        //https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_newInstance
        Date testDate = date.newinstance(2001,11,17);
        //november has 30 days
        String testEndOfMonthString = VerifyDate.SetEndOfMonthDate(testDate).format();
        System.assertEquals('11/30/2001',testEndOfMonthString,'End of month was not expected');

    }
    @isTest static void testWithin30DaysPast() {
        // date2 should be checked for if it is in the past, if so the expected value is false
        Date testDate1 = date.newInstance(2001,11,17);
        Date testDate2 = date.newInstance(2001, 10, 14);
        Boolean testDatePast = VerifyDate.DateWithin30Days(testDate1, testDate2);
        System.assertEquals(false, testDatePast, 'Unexpected result when checking if provided date is in the past.');
    }
    @isTest static void testWithin30DaysFutureOOB() {
        // outside of 30 days the expected value is false
        Date testDate1 = date.newInstance(2001,10,14);
        Date testDate2 = date.newInstance(2001, 11, 29);
        Boolean testDateOOB = VerifyDate.DateWithin30Days(testDate1, testDate2);
        System.assertEquals(false, testDateOOB, 'Unexpected result when checking if provided date is within 30 days.');
    }
    @isTest static void testWithin30DaysFutureIB() {
        // within 30 days the expected value is true
    }

    
    
}