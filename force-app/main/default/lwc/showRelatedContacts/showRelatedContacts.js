import { LightningElement, api, wire, track } from 'lwc';
import getAccountContacts from '@salesforce/apex/ShowRelatedContactsController.getAccountContacts';

// टेबलचे कॉलम्स निश्चित करणे
const COLUMNS = [
    { label: 'First Name', fieldName: 'FirstName', type: 'text' },
    { label: 'Last Name', fieldName: 'LastName', type: 'text' },
    { label: 'Email', fieldName: 'Email', type: 'email' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' }
];

export default class ShowRelatedContacts extends LightningElement {

    @api recordId;
    contacts;
    errors;
    columns = COLUMNS;

    connectedCallback() {
        console.log('recordId : ' + this.recordId);
    }

    @wire(getAccountContacts, {accountId : '$recordId'})
    getWiredRecord({error, data}) {

        console.log('Data ', data);
        console.log('Error ' + error);
        if(data) { 
            this.contacts = data;
            this.errors = undefined;
        }
        if(error) {
            this.contacts = undefined;
            this.errors = error;
        } 
    }


}