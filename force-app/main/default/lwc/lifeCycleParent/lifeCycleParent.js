import { LightningElement } from 'lwc';

export default class LifeCycleParent extends LightningElement {
    constructor(){
        super();
        console.log("Parent constructor is Called");
    }
    connectedCallback(){
        console.log('Connected Call back is here');

    }
    renderedCallback(){
        console.log('Renderd call back is here')
    }
}