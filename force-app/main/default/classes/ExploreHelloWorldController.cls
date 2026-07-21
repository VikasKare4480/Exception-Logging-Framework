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
            WITH USER_MODE
            LIMIT 100
        ];
        return contactList;
    }

    @auraEnabled(cacheable=true)
    public static string updateContacts(Object contactData) {

        List<Contact> contactsToUpdate = (List<Contact>) JSON.deserialize(
            JSON.serialize(contactData), List<Contact>.class
        );

        try {
            update contactsToUpdate;
             return 'Success: contacts updated successfully';
        }catch(Exception e) {

            return 'The following exception has occurred: ' + e.getMessage();
        }
    }
}