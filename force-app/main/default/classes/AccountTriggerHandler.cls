public class AccountTriggerHandler {
	
	public static void CreateAccounts(List<Account> newEntries) {

		for(Account account : newEntries) {

			if(account.BillingState != null) {

				account.ShippingState = account.BillingState;
			}
		}
	}
}