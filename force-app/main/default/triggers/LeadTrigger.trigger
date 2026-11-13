trigger LeadTrigger on Lead (before insert, after insert) {

    if(Trigger.isBefore && Trigger.isInsert){

    
    for(Lead myLead : Trigger.new) {
        myLead.Title = 'New Lead';
     }
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        for(Lead l : Trigger.new) {
            List<Task> newTasks = new Lists<Task>();
            Task tsk = new Task(); 
            tsk.Subject = 'Follow up on new lead';
            tsk.whoId = l.Id;
        }
        newTasks.add(tsk);
        insert newTasks;
    }

}