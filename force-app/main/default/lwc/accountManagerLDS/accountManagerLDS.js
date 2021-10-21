import { LightningElement,track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class AccountManagerLDS extends LightningElement {
    @track accountName;
    @track accountPhone;
    @track accountWebsite;
    accountNameChangeHandler(event){
        this.accountName=event.target.value;
    }
    accountPhoneChangeHandler(event){
        this.accountPhone=event.target.value;
    }
    accountWebsiteChangeHandler(event){
        this.accountWebsite=event.target.value;
    }
    createAccount(){
        const fields={'Name':this.accountName, 'Phone':this.accountPhone,'Website':this.accountWebsite};
        const recordInput={apiName:'Account',fields};
        createRecord(recordInput).then(response=>{
            const toastEvent = new ShowToastEvent({
                title: "Account created",
                message: "Record ID: " + response.id,
                variant: "success"
            });
            this.dispatchEvent(toastEvent);
            console.log('Account is created : ',response.id);
        }).catch(error=>{
            console.error('Error in Creating Account',error.body.message);
        })
        
    }
}