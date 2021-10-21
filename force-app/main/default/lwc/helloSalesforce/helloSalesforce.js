import { LightningElement,track } from 'lwc';

export default class HelloSalesforce extends LightningElement {
    greeting = 'World';
    course='LWC';
    isVisible=false;
    name=''
    typedHello=false;

    handleChange(event)
    {
        this.course=event.target.value;
    }

   
     address={
        city : "Okara",
        postcode:56130,
        country: "Pakistan"
    }
    trackhandler(event)
    {
        //make address with @track or do this
        this.address={...this.address,"city": event.target.value};
    }
    //c/apiSetterGetter

    users = ["John Kya tum ne Dekha" ,  "Micheal" , "Charles"]
    num1=10
    num2=20
    get firstUser()
    {
        return this.users[0].toUpperCase();
    }
    get sumofTwoNumber()
    {
        return this.num1+this.num2
    }

    handleclick(event){
        this.isVisible=true;
    }
    changeHandler(event){
        this.name=event.target.value;
        if (this.name=="hello")
        this.typedHello=true;
        else 
        this.typedHello=false;
    }
}