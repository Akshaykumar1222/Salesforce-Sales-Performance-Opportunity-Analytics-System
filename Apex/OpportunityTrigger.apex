trigger OpportunityTrigger on Opportunity (before insert, before update) {
    for (Opportunity opp : Trigger.new) {
        if (opp.StageName == 'Closed Won') {
            opp.Description = 'Opportunity successfully closed';
        }
    }
}
