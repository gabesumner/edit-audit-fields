public with sharing class testClass {
    public static void testEdit() {
        Account account = new Account();
        account.Name = 'Test Account';

        // The following line will throw an error if the enableAuditFieldsInactiveOwner setting is false
        account.CreatedDate =  Date.today().addDays(-2);
        insert account;
    }
}
