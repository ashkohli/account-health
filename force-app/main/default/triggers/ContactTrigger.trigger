trigger ContactTrigger on Contact (before insert) {

    for (contact con : trigger.new) {
        con.description = 'Created by trigger';
    }


}