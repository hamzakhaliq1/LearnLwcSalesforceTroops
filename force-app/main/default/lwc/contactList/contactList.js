import { LightningElement, wire } from 'lwc';
import FIRST_NAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LAST_NAME_FIELD from '@salesforce/schema/Contact.LastName';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import { reduceErrors } from 'c/ldsUtils';

const COLUMNS = [
    { label: 'First Name', fieldName: FIRST_NAME_FIELD.fieldApiName, type: 'text' },
    { label: 'Last Name', fieldName: LAST_NAME_FIELD.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: EMAIL_FIELD.fieldApiName, type: 'text' }
];

export default class ContactList extends LightningElement {
   
  columns=COLUMNS;  
  errors;

    get errors(){
    return this.contacts.errors = reduceErrors(this.contacts.errors);
    }
    @wire(getContacts) contacts({data,error}){
        if (error)
        {
            this.errors=reduceErrors(error);
        }
        else
        {
            console.log(data)
        }
    };
    

    

    // handleSelect(event) {
    //     // 1. Prevent default behavior of anchor tag click which is to navigate to the href url
    //     event.preventDefault();
    //     // 2. Create a custom event that bubbles. Read about event best practices at http://developer.salesforce.com/docs/component-library/documentation/lwc/lwc.events_best_practices
    //     const selectEvent = new CustomEvent('contactselect', {
    //         detail: { contactId: event.currentTarget.dataset.contactId }
    //     });
    //     // 3. Fire the custom event
    //     this.dispatchEvent(selectEvent);
    // }
}