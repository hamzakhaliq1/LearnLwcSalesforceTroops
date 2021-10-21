import { LightningElement } from 'lwc';

export default class Inputform extends LightningElement {
    name='';
    handlechange(event){
        this.name=event.target.value;
    }
}