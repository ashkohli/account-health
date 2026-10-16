trigger LeadTrigger on Lead (before insert) {
    for(Lead myLead : Trigger.new) {
        myLead.Title = 'New Lead';
    }


}