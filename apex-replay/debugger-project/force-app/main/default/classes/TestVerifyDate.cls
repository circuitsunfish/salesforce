//https://dev.to/aellon/how-to-view-apex-code-coverage-in-vs-code-4643
//The verifications are done by calling the System.assertEquals() method, which takes two parameters: the first is the expected value, and the second is the actual value. There is another version of this method that takes a third parameter—a string that describes the comparison being done, which is used in testBoilingPoint(). This optional string is logged if the assertion fails.
@isTest
private class TestVerifyDate {
    @isTest static void testEndOfMonthDate() {
        // This method should correctly return the end of month for a date
return null;
    }
    @isTest static void testWithin30DaysPast() {
        // date2 should be checked for if it is in the past and respond appropriately
return null;
    }
    @isTest static void testWithin30DaysFutureOOB() {
        // outside of 30 days the end of month value should be used
return null;
    }
    @isTest static void testWithin30DaysFutureIB() {
        // within 30 days the date2 value should be used
return null;
    }

    
    
}