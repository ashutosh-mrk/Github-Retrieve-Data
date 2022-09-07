@isTest
public class AccOppTest {
    
    @isTest
    static void AccOpp(){
        
        Account ac = new Account ();
        ac.Name='Test';
        ac.Rating='Warm';
        ac.Industry='Education';
        insert ac;
        
        Opportunity opp= new Opportunity();
        opp.Name=ac.Name;
        opp.CloseDate = system.today();
        opp.StageName ='Open';
        opp.AccountId=ac.Id;
        insert opp;
        
    }

}