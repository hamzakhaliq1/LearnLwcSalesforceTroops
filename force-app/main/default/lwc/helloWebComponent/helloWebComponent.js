import { LightningElement , api } from 'lwc';

export default class HelloWebComponent extends LightningElement {
    greeting="Bear";
    @api

    currentdate = new Date().toDateString();
    handlegreetingchange(event)
    {
        this.greeting=event.target.value;

    }
    get capitalizedGreeting()
    {
        return `Hello ${this.greeting.toUpperCase()}!`;
    }
}