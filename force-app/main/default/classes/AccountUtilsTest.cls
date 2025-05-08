@isTest
private class AccountUtilsTest {
    @isTest
    static void testPrintOutAccounts() {
        List<Account> personAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            personAccounts.add(new Account(
                FirstName = 'Joe' + i,
                LastName = 'Dough' + i,
                PersonEmail = 'testemail' + i + '@example.com',
                RecordTypeId = [SELECT Id FROM RecordType WHERE SObjectType = 'Account' AND IsPersonType = TRUE LIMIT 1].Id
            ));
        }
        insert personAccounts;
        Test.startTest();
        AccountUtils.printOutAccounts();
        Test.stopTest();
    }
}
