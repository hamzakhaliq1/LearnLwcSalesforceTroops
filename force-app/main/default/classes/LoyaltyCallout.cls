public class LoyaltyCallout {
    
    //LoyaltyPlatformWs.IssueTransactionMultipleProductBasketCustomFieldsBookingDate_element request = new LoyaltyPlatformWs.IssueTransactionMultipleProductBasketCustomFieldsBookingDate_element();
    //LoyaltyPlatformWs.IssueTransactionMultipleProductBasketCustomFieldsBookingDateReturn(String some);
    public void callout(){
        
    
    LoyaltyPlatformWs.TransactionSoap ts = new LoyaltyPlatformWs.TransactionSoap();
    final String WSSecurityToken='lg1mL28dopyx0sAr99mn90eIgJ5P6XxB3y4aA46v1A113YM98Bfa2T5dL5eVmNP7';
    String memberAccountid='100354230200';
    Integer SBInternalMemberId=-1;
    String LocationExternalReference='FRO';
    String TransactionTypeExternalReference='Member_Stay';
    String LocalActivityTimestamp='2/26/2021 10:15:14 AM';
    String TransactionExternalReference = '0060v000008MOr4AAG1';
    Integer CheckForDuplicateTransaction =1;
    Integer InsertMissingProductItems=0;
    Integer FetchUpdatedMemberPointTotals=1;
    Integer ProcessPOSMessagePromotionOnSuccess=0;
	String BookingDate='2-26-2021';
    LoyaltyPlatformWs.ArrayOfTransactionBasketItem ProductBasket = new LoyaltyPlatformWs.ArrayOfTransactionBasketItem();
   	LoyaltyPlatformWs.TransactionBasketItem b = new LoyaltyPlatformWs.TransactionBasketItem();
    b.ProductExternalReference='RV';
    b.BasketItemQty=10;
    b.BasketItemTotalPrice=0;
	b.BasketItemTotalPoints=0;
	b.BasketItemTotalProfit=0;
    productbasket.TransactionBasketItem  = new List<LoyaltyPlatformWs.TransactionBasketItem>();
    productbasket.TransactionBasketItem.add(b);
    
    // ProductBasket.TransactionBasketItem internal = new LoyaltyPlatformWs.TransactionBasketItem();
   // LoyaltyPlatformWs.TransactionBasketItem l1 = new LoyaltyPlatform.TransactionBasketItem();
   // l1.FetchTransactionBasketItem.ProductExternalReference='RV';
    
    
   LoyaltyPlatformWs.IssueTransactionMultipleProductBasketCustomFieldsBookingDateReturn response= ts.IssueTransactionMultipleProductBasketCustomFieldsBookingDate(WSSecurityToken, MemberAccountId, SBInternalMemberId, LocationExternalReference, TransactionTypeExternalReference, LocalActivityTimestamp, TransactionExternalReference, ProductBasket, CheckForDuplicateTransaction, InsertMissingProductItems, FetchUpdatedMemberPointTotals, ProcessPOSMessagePromotionOnSuccess, BookingDate, null);
   System.debug(response.returncode);
        //LoyaltyPlatformWs.IssueTransactionMultipleProductBasketCustomFieldsBookingDateReturn response = ts.
    //ts.IssueTransactionMultipleProductBasketCustomFieldsBookingDate(WSSecurityToken, MemberAccountId, SBInternalMemberId, LocationExternalReference, TransactionTypeExternalReference, LocalActivityTimestamp, TransactionExternalReference, ProductBasket, CheckForDuplicateTransaction, InsertMissingProductItems, FetchUpdatedMemberPointTotals, ProcessPOSMessagePromotionOnSuccess, BookingDate, TransactionCustomFields);
    }
}