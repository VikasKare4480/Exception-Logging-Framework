/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-21-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ShowRelatedContactsController {

   @AuraEnabled(cacheable=true)
    public static List<Contact> getAccountContacts(Id accountId) {
        return [
            SELECT Id, FirstName, LastName, Email, Phone 
            FROM Contact 
            WHERE AccountId = :accountId
        ];
    }
}