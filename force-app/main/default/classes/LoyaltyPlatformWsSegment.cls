//Generated by wsdl2apex

public class LoyaltyPlatformWsSegment {
    public class MemberExistsInRankingLevelResponse_element {
        public LoyaltyPlatformWsSegment.MemberExistsInRankingLevelReturn MemberExistsInRankingLevelResult;
        private String[] MemberExistsInRankingLevelResult_type_info = new String[]{'MemberExistsInRankingLevelResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberExistsInRankingLevelResult'};
    }
    public class MemberPromotionalGroupsResponse_element {
        public LoyaltyPlatformWsSegment.MemberPromotionalGroupsReturn MemberPromotionalGroupsResult;
        private String[] MemberPromotionalGroupsResult_type_info = new String[]{'MemberPromotionalGroupsResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberPromotionalGroupsResult'};
    }
    public class RankingLevelOverrideDescriptorsAssignedToMember {
        public String OverrideDescriptorExtRef;
        public String OverrideDescriptorExpireDate;
        public String SecondaryOverrideDescriptorExtRef;
        public String SecondaryOverrideDescriptorExpireDate;
        private String[] OverrideDescriptorExtRef_type_info = new String[]{'OverrideDescriptorExtRef','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] OverrideDescriptorExpireDate_type_info = new String[]{'OverrideDescriptorExpireDate','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SecondaryOverrideDescriptorExtRef_type_info = new String[]{'SecondaryOverrideDescriptorExtRef','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SecondaryOverrideDescriptorExpireDate_type_info = new String[]{'SecondaryOverrideDescriptorExpireDate','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'OverrideDescriptorExtRef','OverrideDescriptorExpireDate','SecondaryOverrideDescriptorExtRef','SecondaryOverrideDescriptorExpireDate'};
    }
    public class MemberExistsInRankingSet_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String RankingSetExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankingSetExternalReference_type_info = new String[]{'RankingSetExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','RankingSetExternalReference'};
    }
    public class ArrayOfMemberPromotionalGroupsItem {
        public LoyaltyPlatformWsSegment.MemberPromotionalGroupsItem[] MemberPromotionalGroupsItem;
        private String[] MemberPromotionalGroupsItem_type_info = new String[]{'MemberPromotionalGroupsItem','LoyaltyPlatformWS',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberPromotionalGroupsItem'};
    }
    public class MemberRankingLevelForSet_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String RankingSetExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankingSetExternalReference_type_info = new String[]{'RankingSetExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','RankingSetExternalReference'};
    }
    public class MemberRankingLevelForSetReturn {
        public Integer ReturnCode;
        public String RankLevelExternalReference;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankLevelExternalReference_type_info = new String[]{'RankLevelExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','RankLevelExternalReference'};
    }
    public class ProcessMemberRankingSetLevel_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String RankingSetExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankingSetExternalReference_type_info = new String[]{'RankingSetExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','RankingSetExternalReference'};
    }
    public class FetchMemberRankingSetStatus_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String RankingSetExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankingSetExternalReference_type_info = new String[]{'RankingSetExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','RankingSetExternalReference'};
    }
    public class ProcessMemberRankingSetLevelReturn {
        public Integer ReturnCode;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode'};
    }
    public class MemberExistsInCampaignGroupResponse_element {
        public LoyaltyPlatformWsSegment.MemberExistsInCampaignGroupReturn MemberExistsInCampaignGroupResult;
        private String[] MemberExistsInCampaignGroupResult_type_info = new String[]{'MemberExistsInCampaignGroupResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberExistsInCampaignGroupResult'};
    }
    public class MemberExistsInPromotionalGroup_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String PromotionalGroupExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] PromotionalGroupExternalReference_type_info = new String[]{'PromotionalGroupExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','PromotionalGroupExternalReference'};
    }
    public class MemberPromotionalGroupsItem {
        public String PromotionalGroupName;
        public String PromotionalGroupExternalReference;
        public String PromotionalGroupFullPath;
        private String[] PromotionalGroupName_type_info = new String[]{'PromotionalGroupName','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] PromotionalGroupExternalReference_type_info = new String[]{'PromotionalGroupExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] PromotionalGroupFullPath_type_info = new String[]{'PromotionalGroupFullPath','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'PromotionalGroupName','PromotionalGroupExternalReference','PromotionalGroupFullPath'};
    }
    public class MemberRankingLevelForSetResponse_element {
        public LoyaltyPlatformWsSegment.MemberRankingLevelForSetReturn MemberRankingLevelForSetResult;
        private String[] MemberRankingLevelForSetResult_type_info = new String[]{'MemberRankingLevelForSetResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberRankingLevelForSetResult'};
    }
    public class MemberExistsInCampaignGroupReturn {
        public Integer ReturnCode;
        public Integer MemberIsInCampaignGroup;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberIsInCampaignGroup_type_info = new String[]{'MemberIsInCampaignGroup','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','MemberIsInCampaignGroup'};
    }
    public class FetchMemberRankingSetStatusReturn {
        public Integer ReturnCode;
        public Integer MemberIsInRankingSet;
        public Integer MemberIsInTopRankingLevel;
        public String RankingSetLastBuildTimestampUTC;
        public String RankingLevelExternalReference;
        public String RankingLevelMemberJoinDateUTC;
        public LoyaltyPlatformWsSegment.RankingLevelMemberValues RankingLevelMemberQualifyValues;
        public LoyaltyPlatformWsSegment.RankingLevelMemberValuesToNextLevel RankingLevelMemberQualifyValuesToNextLevel;
        public LoyaltyPlatformWsSegment.RankingLevelOverrideDescriptorsAssignedToMember RankingLevelOverrideDescriptorsAssignedToMember;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberIsInRankingSet_type_info = new String[]{'MemberIsInRankingSet','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberIsInTopRankingLevel_type_info = new String[]{'MemberIsInTopRankingLevel','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankingSetLastBuildTimestampUTC_type_info = new String[]{'RankingSetLastBuildTimestampUTC','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] RankingLevelExternalReference_type_info = new String[]{'RankingLevelExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] RankingLevelMemberJoinDateUTC_type_info = new String[]{'RankingLevelMemberJoinDateUTC','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] RankingLevelMemberQualifyValues_type_info = new String[]{'RankingLevelMemberQualifyValues','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] RankingLevelMemberQualifyValuesToNextLevel_type_info = new String[]{'RankingLevelMemberQualifyValuesToNextLevel','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] RankingLevelOverrideDescriptorsAssignedToMember_type_info = new String[]{'RankingLevelOverrideDescriptorsAssignedToMember','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','MemberIsInRankingSet','MemberIsInTopRankingLevel','RankingSetLastBuildTimestampUTC','RankingLevelExternalReference','RankingLevelMemberJoinDateUTC','RankingLevelMemberQualifyValues','RankingLevelMemberQualifyValuesToNextLevel','RankingLevelOverrideDescriptorsAssignedToMember'};
    }
    public class MemberExistsInRankingSetReturn {
        public Integer ReturnCode;
        public Integer MemberIsInRankingSet;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberIsInRankingSet_type_info = new String[]{'MemberIsInRankingSet','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','MemberIsInRankingSet'};
    }
    public class MemberPromotionalGroupsReturn {
        public Integer ReturnCode;
        public LoyaltyPlatformWsSegment.ArrayOfMemberPromotionalGroupsItem MemberPromotionalGroups;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberPromotionalGroups_type_info = new String[]{'MemberPromotionalGroups','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','MemberPromotionalGroups'};
    }
    public class FetchMemberRankingSetStatusResponse_element {
        public LoyaltyPlatformWsSegment.FetchMemberRankingSetStatusReturn FetchMemberRankingSetStatusResult;
        private String[] FetchMemberRankingSetStatusResult_type_info = new String[]{'FetchMemberRankingSetStatusResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'FetchMemberRankingSetStatusResult'};
    }
    public class MemberPromotionalGroups_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId'};
    }
    public class MemberExistsInRankingSetResponse_element {
        public LoyaltyPlatformWsSegment.MemberExistsInRankingSetReturn MemberExistsInRankingSetResult;
        private String[] MemberExistsInRankingSetResult_type_info = new String[]{'MemberExistsInRankingSetResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberExistsInRankingSetResult'};
    }
    public class MemberExistsInRankingLevel_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String RankingSetExternalReference;
        public String RankingLevelExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] RankingSetExternalReference_type_info = new String[]{'RankingSetExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] RankingLevelExternalReference_type_info = new String[]{'RankingLevelExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','RankingSetExternalReference','RankingLevelExternalReference'};
    }
    public class RankingLevelMemberValues {
        public Double FirstRankingLevelMemberValues;
        public Double SecondRankingLevelMemberValues;
        private String[] FirstRankingLevelMemberValues_type_info = new String[]{'FirstRankingLevelMemberValues','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] SecondRankingLevelMemberValues_type_info = new String[]{'SecondRankingLevelMemberValues','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'FirstRankingLevelMemberValues','SecondRankingLevelMemberValues'};
    }
    public class MemberExistsInRankingLevelReturn {
        public Integer ReturnCode;
        public Integer MemberIsInRankingLevel;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberIsInRankingLevel_type_info = new String[]{'MemberIsInRankingLevel','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','MemberIsInRankingLevel'};
    }
    public class MemberExistsInPromotionalGroupResponse_element {
        public LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroupReturn MemberExistsInPromotionalGroupResult;
        private String[] MemberExistsInPromotionalGroupResult_type_info = new String[]{'MemberExistsInPromotionalGroupResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'MemberExistsInPromotionalGroupResult'};
    }
    public class RankingLevelMemberValuesToNextLevel {
        public Double FirstRankingLevelMemberValuesToNextLevel;
        public Double SecondRankingLevelMemberValuesToNextLevel;
        private String[] FirstRankingLevelMemberValuesToNextLevel_type_info = new String[]{'FirstRankingLevelMemberValuesToNextLevel','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] SecondRankingLevelMemberValuesToNextLevel_type_info = new String[]{'SecondRankingLevelMemberValuesToNextLevel','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'FirstRankingLevelMemberValuesToNextLevel','SecondRankingLevelMemberValuesToNextLevel'};
    }
    public class MemberExistsInPromotionalGroupReturn {
        public Integer ReturnCode;
        public Integer MemberIsInPromotionalGroup;
        private String[] ReturnCode_type_info = new String[]{'ReturnCode','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] MemberIsInPromotionalGroup_type_info = new String[]{'MemberIsInPromotionalGroup','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ReturnCode','MemberIsInPromotionalGroup'};
    }
    public class MemberExistsInCampaignGroup_element {
        public String WSSecurityToken;
        public String MemberAccountId;
        public Integer SBInternalMemberId;
        public String PromotionalGroupExternalReference;
        private String[] WSSecurityToken_type_info = new String[]{'WSSecurityToken','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] MemberAccountId_type_info = new String[]{'MemberAccountId','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] SBInternalMemberId_type_info = new String[]{'SBInternalMemberId','LoyaltyPlatformWS',null,'1','1','false'};
        private String[] PromotionalGroupExternalReference_type_info = new String[]{'PromotionalGroupExternalReference','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'WSSecurityToken','MemberAccountId','SBInternalMemberId','PromotionalGroupExternalReference'};
    }
    public class ProcessMemberRankingSetLevelResponse_element {
        public LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevelReturn ProcessMemberRankingSetLevelResult;
        private String[] ProcessMemberRankingSetLevelResult_type_info = new String[]{'ProcessMemberRankingSetLevelResult','LoyaltyPlatformWS',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'LoyaltyPlatformWS','true','false'};
        private String[] field_order_type_info = new String[]{'ProcessMemberRankingSetLevelResult'};
    }
    public class SegmentSoap {
        public String endpoint_x = 'https://app.smartbutton.com/WS/Segment.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'LoyaltyPlatformWS', 'LoyaltyPlatformWsSegment'};
        public LoyaltyPlatformWsSegment.MemberExistsInCampaignGroupReturn MemberExistsInCampaignGroup(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String PromotionalGroupExternalReference) {
            LoyaltyPlatformWsSegment.MemberExistsInCampaignGroup_element request_x = new LoyaltyPlatformWsSegment.MemberExistsInCampaignGroup_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.PromotionalGroupExternalReference = PromotionalGroupExternalReference;
            LoyaltyPlatformWsSegment.MemberExistsInCampaignGroupResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.MemberExistsInCampaignGroupResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.MemberExistsInCampaignGroupResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/MemberExistsInCampaignGroup',
              'LoyaltyPlatformWS',
              'MemberExistsInCampaignGroup',
              'LoyaltyPlatformWS',
              'MemberExistsInCampaignGroupResponse',
              'LoyaltyPlatformWsSegment.MemberExistsInCampaignGroupResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.MemberExistsInCampaignGroupResult;
        }
        public LoyaltyPlatformWsSegment.MemberPromotionalGroupsReturn MemberPromotionalGroups(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId) {
            LoyaltyPlatformWsSegment.MemberPromotionalGroups_element request_x = new LoyaltyPlatformWsSegment.MemberPromotionalGroups_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            LoyaltyPlatformWsSegment.MemberPromotionalGroupsResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.MemberPromotionalGroupsResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.MemberPromotionalGroupsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/MemberPromotionalGroups',
              'LoyaltyPlatformWS',
              'MemberPromotionalGroups',
              'LoyaltyPlatformWS',
              'MemberPromotionalGroupsResponse',
              'LoyaltyPlatformWsSegment.MemberPromotionalGroupsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.MemberPromotionalGroupsResult;
        }
        public LoyaltyPlatformWsSegment.MemberExistsInRankingLevelReturn MemberExistsInRankingLevel(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String RankingSetExternalReference,String RankingLevelExternalReference) {
            LoyaltyPlatformWsSegment.MemberExistsInRankingLevel_element request_x = new LoyaltyPlatformWsSegment.MemberExistsInRankingLevel_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.RankingSetExternalReference = RankingSetExternalReference;
            request_x.RankingLevelExternalReference = RankingLevelExternalReference;
            LoyaltyPlatformWsSegment.MemberExistsInRankingLevelResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.MemberExistsInRankingLevelResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.MemberExistsInRankingLevelResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/MemberExistsInRankingLevel',
              'LoyaltyPlatformWS',
              'MemberExistsInRankingLevel',
              'LoyaltyPlatformWS',
              'MemberExistsInRankingLevelResponse',
              'LoyaltyPlatformWsSegment.MemberExistsInRankingLevelResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.MemberExistsInRankingLevelResult;
        }
        public LoyaltyPlatformWsSegment.MemberExistsInRankingSetReturn MemberExistsInRankingSet(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String RankingSetExternalReference) {
            LoyaltyPlatformWsSegment.MemberExistsInRankingSet_element request_x = new LoyaltyPlatformWsSegment.MemberExistsInRankingSet_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.RankingSetExternalReference = RankingSetExternalReference;
            LoyaltyPlatformWsSegment.MemberExistsInRankingSetResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.MemberExistsInRankingSetResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.MemberExistsInRankingSetResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/MemberExistsInRankingSet',
              'LoyaltyPlatformWS',
              'MemberExistsInRankingSet',
              'LoyaltyPlatformWS',
              'MemberExistsInRankingSetResponse',
              'LoyaltyPlatformWsSegment.MemberExistsInRankingSetResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.MemberExistsInRankingSetResult;
        }
        public LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevelReturn ProcessMemberRankingSetLevel(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String RankingSetExternalReference) {
            LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevel_element request_x = new LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevel_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.RankingSetExternalReference = RankingSetExternalReference;
            LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevelResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevelResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevelResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/ProcessMemberRankingSetLevel',
              'LoyaltyPlatformWS',
              'ProcessMemberRankingSetLevel',
              'LoyaltyPlatformWS',
              'ProcessMemberRankingSetLevelResponse',
              'LoyaltyPlatformWsSegment.ProcessMemberRankingSetLevelResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ProcessMemberRankingSetLevelResult;
        }
        public LoyaltyPlatformWsSegment.MemberRankingLevelForSetReturn MemberRankingLevelForSet(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String RankingSetExternalReference) {
            LoyaltyPlatformWsSegment.MemberRankingLevelForSet_element request_x = new LoyaltyPlatformWsSegment.MemberRankingLevelForSet_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.RankingSetExternalReference = RankingSetExternalReference;
            LoyaltyPlatformWsSegment.MemberRankingLevelForSetResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.MemberRankingLevelForSetResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.MemberRankingLevelForSetResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/MemberRankingLevelForSet',
              'LoyaltyPlatformWS',
              'MemberRankingLevelForSet',
              'LoyaltyPlatformWS',
              'MemberRankingLevelForSetResponse',
              'LoyaltyPlatformWsSegment.MemberRankingLevelForSetResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.MemberRankingLevelForSetResult;
        }
        public LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroupReturn MemberExistsInPromotionalGroup(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String PromotionalGroupExternalReference) {
            LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroup_element request_x = new LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroup_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.PromotionalGroupExternalReference = PromotionalGroupExternalReference;
            LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroupResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroupResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroupResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/MemberExistsInPromotionalGroup',
              'LoyaltyPlatformWS',
              'MemberExistsInPromotionalGroup',
              'LoyaltyPlatformWS',
              'MemberExistsInPromotionalGroupResponse',
              'LoyaltyPlatformWsSegment.MemberExistsInPromotionalGroupResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.MemberExistsInPromotionalGroupResult;
        }
        public LoyaltyPlatformWsSegment.FetchMemberRankingSetStatusReturn FetchMemberRankingSetStatus(String WSSecurityToken,String MemberAccountId,Integer SBInternalMemberId,String RankingSetExternalReference) {
            LoyaltyPlatformWsSegment.FetchMemberRankingSetStatus_element request_x = new LoyaltyPlatformWsSegment.FetchMemberRankingSetStatus_element();
            request_x.WSSecurityToken = WSSecurityToken;
            request_x.MemberAccountId = MemberAccountId;
            request_x.SBInternalMemberId = SBInternalMemberId;
            request_x.RankingSetExternalReference = RankingSetExternalReference;
            LoyaltyPlatformWsSegment.FetchMemberRankingSetStatusResponse_element response_x;
            Map<String, LoyaltyPlatformWsSegment.FetchMemberRankingSetStatusResponse_element> response_map_x = new Map<String, LoyaltyPlatformWsSegment.FetchMemberRankingSetStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'LoyaltyPlatformWS/FetchMemberRankingSetStatus',
              'LoyaltyPlatformWS',
              'FetchMemberRankingSetStatus',
              'LoyaltyPlatformWS',
              'FetchMemberRankingSetStatusResponse',
              'LoyaltyPlatformWsSegment.FetchMemberRankingSetStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.FetchMemberRankingSetStatusResult;
        }
    }
}