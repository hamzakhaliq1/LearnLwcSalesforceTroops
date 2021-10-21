public class LoyaltyPlatformWsSupport{
public class GetReturnCodeMessage_element {
        public String WSSecurityToken;
        public Integer ReturnCode;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','ReturnCode'};
}
public class GetReturnCodeMessageReturn {
        public Integer ReturnCode;
        public String ReturnCodeMessage;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] ReturnCodeMessage_type_info = new String[]{'ReturnCodeMessage','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','ReturnCodeMessage'};
    }
    
public class GetReturnCodeMessageResponse_element {
        public LoyaltyPlatformWsSupport.GetReturnCodeMessageReturn GetReturnCodeMessageResult;
        private String[] GetReturnCodeMessageResult_type_info = new String[]{'GetReturnCodeMessageResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'GetReturnCodeMessageResult'};
    }
public class SupportSoap {
        public String endpoint_x = 'https://app.smartbutton.com/WS/Support.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'LoyaltyPlatformWS', 'LoyaltyPlatformWsSupport'};
public LoyaltyPlatformWsSupport.GetReturnCodeMessageReturn GetReturnCodeMessage(String WSSecurityToken,Integer ReturnCode) {
            LoyaltyPlatformWsSupport.GetReturnCodeMessage_element request_x = new LoyaltyPlatformWsSupport.GetReturnCodeMessage_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.ReturnCode = ReturnCode;
            LoyaltyPlatformWsSupport.GetReturnCodeMessageResponse_element response_x;
            Map<String, LoyaltyPlatformWsSupport.GetReturnCodeMessageResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSupport.GetReturnCodeMessageResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/GetReturnCodeMessage',
              'LoyaltyPlatformWS',
              'GetReturnCodeMessage',
              'LoyaltyPlatformWS',
              'GetReturnCodeMessageResponse',
              'LoyaltyPlatformWsSupport.GetReturnCodeMessageResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetReturnCodeMessageResult;
        }
}
}