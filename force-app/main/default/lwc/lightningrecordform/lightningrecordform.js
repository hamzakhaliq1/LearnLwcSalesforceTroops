import { LightningElement, wire } from 'lwc';
import getAllActiveAccounts from '@salesforce/apex/AccountController.getAllActiveAccounts';
const columns = [
    
        {label : 'ID' , fieldName : 'Id'},
        { label:'Name' , fieldName : 'Name' },
        {  label: 'Phone' , fieldName : 'Phone'},
        {label : 'Site' , fieldName : 'Site'},
        { label:'Type' , fieldName : 'Type' },
        {  label: 'Intrests' , fieldName : 'Intrests__c'}
        
    
];
export default class Lightningrecordform extends LightningElement {
    error;
    columns=columns;
    @wire(getAllActiveAccounts) accounts;

}