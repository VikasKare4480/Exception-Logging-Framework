global class AccountUtils {

	public static List<Account> accountsByState(String billingState){

		return [SELECT Id, BillingState from Account WHERE BillingState = :billingState];
	}
}