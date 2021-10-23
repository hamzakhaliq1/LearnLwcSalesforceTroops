import { LightningElement,api,wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Contact_Last_Name_Field from '@salesforce/schema/contact.LastName'
import Contact_First_Name_Field from '@salesforce/schema/contact.FirstName'
import Contact_Email_Field from '@salesforce/schema/contact.email'
import Contact_Object from '@salesforce/schema/Contact';


export default class ContactCreator extends LightningElement {
     fields= [Contact_Last_Name_Field,Contact_First_Name_Field,Contact_Email_Field]
    // objectApiName = Contact_Object
    // handleSuccess(event){
    //     const toastEvent = new ShowToastEvent({
    //         title: "Contact created",
    //         message: "Record ID: " + event.detail.id,
    //         variant: "success"
    //     });
    //     this.dispatchEvent(toastEvent);
    // }
    @api recordId;
    @wire(getRecord,{recordId:`$recordId`,fields:[Contact_Last_Name_Field,Contact_First_Name_Field,Contact_Email_Field]}) 
    wiredContact({data,error}){
        console.log("Executing the logic each time a new value is added");
        if (data){
            this.data=data;
            this.error=undefined;

        }
        else if (error){
            this.error=error;
            this.data=undefined;
        }
    }




}