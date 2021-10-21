import { LightningElement } from 'lwc';

export default class HelloQuerySelectorDemo extends LightningElement {
    userNames = ["John","Mike","Smith","Jamy"]
    fetchdetailhandler(){
        const eleme =this.template.querySelector('h1')
        console.log(eleme.innerText);
        eleme.style.border="1px solid red"
        const userElements = this.template.querySelectorAll('.name')
        console.log(eleme.innerText);
        Array.from(userElements).forEach(currItem=>{
            console.log(currItem.innerText)
            currItem.setAttribute("title",currItem.innerText)
        })
        const childElem= this.template.querySelector('.child');
        childElem.innerHTML='<p> Hey I am Child </p>'
        
    }
    
}