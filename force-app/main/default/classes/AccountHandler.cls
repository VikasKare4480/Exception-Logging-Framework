public with sharing class AccountHandler {
    public static void CreateNewOpportunity(List<Account> accts) {

		List<Opportunity> opportunityList = new List<Opportunity>();
        for(Account acct : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = acct.Name + ' Opportunity';
            opp.AccountId = acct.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
			opp.Discount_Percent__c = 10;

			opportunityList.add(opp);
        }

		if(opportunityList?.size() > 0)
			insert opportunityList;
    }
}