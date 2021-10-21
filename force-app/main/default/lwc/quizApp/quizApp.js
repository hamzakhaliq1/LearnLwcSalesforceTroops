import { LightningElement } from 'lwc';

export default class QuizApp extends LightningElement {
   
   get allNotSelected(){
       return !(Object.keys(this.selected).length === this.myQuestions.length)
   }
   get isScoredFull()
   {
        return `slds-text-heading_large ${this.myQuestions.length === this.correcctAnswers ?
        'slds-text-color_success' : 'slds-text-color_error'}`
   }
   correcctAnswers=0
   
   isSubmitted = false
    myQuestions=[
        {
            id:"Question 1",
            question: "Which one is not a template loop?",
            answers:{
                a: "forEach",
                b:"iterator",
                c:"map loop"
            },correctAnswer : "c"
        },
        {
            id:"Question 2",
            question: "Which of the following is invalid in LWC?",
            answers:{
                a: ".svg",
                b:".apex",
                c:".js"
            },correctAnswer : "b"
        },
        {
            id:"Question 3",
            question: "Which one is not a directive?",
            answers:{
                a: "for:Each",
                b:"if:true",
                c:"@track"
            },correctAnswer : "c"
        }
    ]
    selected={


    }
    changehandler(event){

        
        const {name,value} = event.target;
        this.selected={...this.selected , [name] :value}

    }

    submithandler(event){
        event.preventDefault();
        let correct =this.myQuestions.filter(item=>this.selected[item.id]=== item.correctAnswer)
        this.correcctAnswers=correct.length
        this.isSubmitted=true
        
    }
    resethandler(){
        this.selected={}
        this.correcctAnswers=0
        //Reset the div showing score
        this.isSubmitted=false;

    }

    
}