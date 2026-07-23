/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-22-2026
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

    @AuraEnabled(cacheable=true) 
    public static List<Opportunity> getOpportunities(Id accountId) {
        return [
            SELECT Id, Name, Description, StageName, Account.Name 
            FROM Opportunity
            WHERE AccountId = :accountId
            LIMIT 100
        ];
    }
}