public class BankAcct {
	
	private integer balance = 0;
	
	public String acctName;
	public String acctType;
	
	public void makeDeposit(integer deposit){
		balance = balance + deposit;
	}
	
	public integer getBalance(){
		return balance;
	}
	

}