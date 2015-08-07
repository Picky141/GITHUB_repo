public with sharing class CreateContactFromCan{
	
	//1.input parameter of a candidate list object called candsFromTrigger
	public void createContact(List<Candidate__c> candsFromTrigger){ 
		
		//7.select the recruiting record from the database and assign to an object called candAcct from the sObject Account
        Account candAcct = [Select a.Id From Account a WHERE a.Name = 'Recruiting'];
		
		//2.(create) instantiate a contact List object named conList
		List<Contact> conList = new List<Contact>();
		
		//3.for list loop to loop through the input parameter list candsFromTrigger with an iterationvariable called currentCandidate
		for(Candidate__c currentCandidate : candsFromTrigger){
			
			//4.Instantiate an object called con from the sObject class contact
			Contact con = new Contact();
			
			//8.Set the attribute AccountId of the con object to the value of ID attribute of the candAcct object
			con.AccountId = candAcct.Id;
			
			con.FirstName = currentCandidate.First_Name__c;
			
			con.LastName = currentCandidate.Last_Name__c;
			
			con.Email = currentCandidate.Email__c;
			
			//5.add the con object is the conList
			
			conList.add(con);
			
		}
		//6.persist the conList to database
		Database.insert(conList);
		
		

		
	}
}