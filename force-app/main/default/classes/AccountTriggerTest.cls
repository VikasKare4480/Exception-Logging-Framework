@IsTest
public class AccountTriggerTest {

	@IsTest
	public static void testmethod1() {

		List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            accts.add(acct);
        }
        // Perform Test
        Test.startTest();
            insert accts;
        Test.stopTest();
		
		List<Account> billingAccts = [SELECT Id FROM Account WHERE BillingState = 'CA'];
        Assert.areEqual(200, billingAccts.size());

		List<Account> shippingAccts = [SELECT Id FROM Account WHERE ShippingState  = 'CA'];	
	    Assert.areEqual(200, shippingAccts.size());

	}
}