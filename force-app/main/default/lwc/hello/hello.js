import { LightningElement } from 'lwc';

export default class Hello extends LightningElement {
    greeting = 'World';
    course='LWC';

    handleChange(event)
    {
        this.course=this.event.target;
    }
}