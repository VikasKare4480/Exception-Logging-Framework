/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-13-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/


public with sharing class ContactHandler {
    public ContactHandler() {

    }

    /**
     * @description Handles Contact trigger events for insert, update, and delete operations
     * @param isInsert Boolean indicating if operation is insert
     * @param isUpdate Boolean indicating if operation is update
     * @param isDelete Boolean indicating if operation is delete
     * @param newEntries List of new Contact records
     * @param oldEntries List of old Contact records
     */
    public static void postData(Boolean isInsert, Boolean isUpdate, Boolean isDelete, List<Contact> newEntries, List<Contact> oldEntries) {
        try {
            // if (isInsert) {
            //     handleInsert(newEntries);
            // } else if (isUpdate) {
            //     handleUpdate(newEntries, oldEntries);
            // } else if (isDelete) {
            //     handleDelete(oldEntries);
            // }
        } catch (Exception ex) {
            System.debug('Error in ContactHandler.postData: ' + ex.getMessage());
            throw ex;
        }
    }

    /**
     * @description Handles Contact trigger events after operations (insert, update, delete, undelete)
     * @param isInsert Boolean indicating if operation is insert
     * @param isUpdate Boolean indicating if operation is update
     * @param isDelete Boolean indicating if operation is delete
     * @param isUndelete Boolean indicating if operation is undelete
     * @param newEntries List of new Contact records
     * @param oldEntries List of old Contact records
     */
    public static void afterPostData(Boolean isInsert, Boolean isUpdate, Boolean isDelete, Boolean isUndelete, List<Contact> newEntries, List<Contact> oldEntries) {
        try {
            if (isInsert) {
                handleAfterInsert(newEntries);
            } else if (isUpdate) {
                handleAfterUpdate(newEntries, oldEntries);
            } else if (isDelete) {
                handleAfterDelete(oldEntries);
            } else if (isUndelete) {
                handleAfterUndelete(newEntries);
            }
        } catch (Exception ex) {
            System.debug('Error in ContactHandler.afterData: ' + ex.getMessage());
            throw ex;
        }
    }

    /**
     * @description Handles logic for inserted contacts after insert
     */
    private static void handleAfterInsert(List<Contact> newEntries) {
        // Add your after insert logic here
        // Example: Create related records, send notifications, etc.
        for (Contact contact : newEntries) {
            // Placeholder for after insert logic
        }
    }

    /**
     * @description Handles logic for updated contacts after update
     */
    private static void handleAfterUpdate(List<Contact> newEntries, List<Contact> oldEntries) {
        Map<Id, Contact> oldContactMap = new Map<Id, Contact>(oldEntries);
        
        for (Contact contact : newEntries) {
            Contact oldContact = oldContactMap.get(contact.Id);
            
            if (oldContact != null) {
                // Add your after update logic here
                // Example: Update related records, send notifications, etc.
            }
        }
    }

    /**
     * @description Handles logic for deleted contacts after delete
     */
    private static void handleAfterDelete(List<Contact> oldEntries) {
        // Add your after delete logic here
        // Example: Clean up related data, send notifications, etc.
        for (Contact contact : oldEntries) {
            // Placeholder for after delete logic
        }
    }

    /**
     * @description Handles logic for undeleted contacts after undelete
     */
    private static void handleAfterUndelete(List<Contact> newEntries) {
        // Add your after undelete logic here
        // Example: Restore related records, send notifications, etc.
        for (Contact contact : newEntries) {
            // Placeholder for after undelete logic
        }
    }
}