public class RESTCalloutService {
    
   
    public void callout(){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:My_Named_Credential/some_path');
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
		System.debug(res.getBody());

    }

}