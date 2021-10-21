// helloWorld.js
import { LightningElement , api } from 'lwc';

export default class HelloWorld extends LightningElement {
    firstName = 'World is better';
    lastName='With You in it'
     somevar='With API';
     handlevar='none';
     seeit=false; showchild=false;
     x='';
     showButton=false;

    handlechange(event){
        this.somevar=event.target.value.toUpperCase();
        
    }
    firstName = 'Lightning User';
    lastName = '';

    handleChange1(event) {
        const field = event.target.name;
        if (field === 'firstName') {
            this.firstName = event.target.value;
        } else if (field === 'lastName') {
            this.lastName = event.target.value;
        }
    }

    get uppercasedFullName() {
        
        return `${this.firstName} ${this.lastName}`.toUpperCase();
    }
    areDetailsVisible = false;

    handleChanges(event) {
        this.areDetailsVisible = event.target.checked;
    }

    contacts = [
        {
            Id: 1,
            Name: 'Amy Taylor',
            Title: 'VP of Engineering',
        },
        {
            Id: 2,
            Name: 'Michael Jones',
            Title: 'VP of Sales',
        },
        {
            Id: 3,
            Name: 'Jennifer Wu',
            Title: 'CEO',
        },
        {
            Id: 4,
            Name: 'Hamza Khaliq',
            Title: 'Salesforce Developer'
        }
    ];
    handleClick(event){
        this.seeit=true;
        this.handlevar=event.target.label.toUpperCase();
        
    }
    handleClose(event){
        this.seeit=false;
    }
    handleAnotherClick(event){
        this.something=event.target.value;
    }
    initdate(event){
        this.x=new Date();
    }
    handleChildShow(event){
        this.showchild=true;
    }
    handleCTemplate(event)
    {
        alert('No')
    }

}