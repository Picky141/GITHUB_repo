trigger CreateContact on Candidate__c (after insert) {

//instantiate an object called cc from class CreateContactFromCan
	
	CreateContactFromCan cc = new CreateContactFromCan();
	
	//invoke the method CreateContact and send a list of Candidates as an input parameter
	
	cc.CreateContact(trigger.new);

}