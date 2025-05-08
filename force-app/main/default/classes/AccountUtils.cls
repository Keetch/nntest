public with sharing class AccountUtils {
    public static void printOutAccounts(){
        Map<Id, Account> accountMap = new Map<Id, Account>([
            SELECT Id,
                Name,
                PersonEmail
            FROM Account
            WHERE IsPersonAccount = TRUE
            LIMIT 10000
        ]);
        System.debug(JSON.serialize(accountMap));
    }
}