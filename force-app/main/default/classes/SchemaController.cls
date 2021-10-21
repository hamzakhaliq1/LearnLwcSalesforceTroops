public class SchemaController {
    
    @AuraEnabled
    public static List<String> getobjectNames(){
        List<Schema.SObjectType> getdetail = Schema.getGlobalDescribe().Values();    
        List<String> selectOptions = new List<String>();
        for(SObjectType ss : getdetail){
            selectoptions.add(ss.getDescribe().getName());
            selectoptions.sort();        
        }
        System.debug('selectOptions--->>' + selectOptions);
        return selectOptions;
    }
    
    @AuraEnabled
    public static List<String> getObjectFields(String selectedObject){
        
        //To make this function ALot more Simple 
		SObjectType accountType = Schema.getGlobalDescribe().get('Account');
		Map<String,Schema.SObjectField> mfields = accountType.getDescribe().fields.getMap();
        //Method Starts from here
        List<String> fields = new List<String>();
        Map<String , Schema.SObjectType> globalDescript = Schema.getGlobalDescribe();
        Schema.sObjectType objectTypess = globalDescript.get(selectedObject); 
        Schema.DescribeSObjectResult ros1 = objectTypess.getDescribe(); 
        
        Map<String , Schema.SObjectField> mapFieldLists = ros1.fields.getMap();  

        for(Schema.SObjectField field : mapFieldLists.values())  {  
            Schema.DescribeFieldResult fieldResultss = field.getDescribe();  
            
            if(fieldResultss.isAccessible())  {  
                fields.add(fieldResultss.getName());
            }  
        }
        List<String> str = new List<String>();
        for(String fstr : fields){ 
            str.add(fstr);
            str.sort();
        } 
        System.debug('str---->>' + str);
        return str;
    }
    public static void fieldResults(){
        Schema.DescribeFieldResult fr = Account.Intrests__c.getDescribe();
        Schema.DescribeFieldResult fr1 = Account.intrests__c.getDescribe();
		System.debug(fr1.getPickListValues());
    }
    
}