/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-20-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ExploreHelloWorldController {

    public String firstName{get;set;} // defining the property with get set

    public ExploreHelloWorldController() {
        firstName = 'Krishna';
    }

     @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsData(String accId) {

        List<Contact> contactList = [
            SELECT ID, Name, Phone, Title, Email, FirstName, LastName, Account.Name
            FROM Contact
            WHERE AccountId = :accId
            LIMIT 100
        ];
        return contactList;
    }
}