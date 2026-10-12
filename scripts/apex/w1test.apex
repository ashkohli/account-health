List<Contact>cons = new List<Contact>(); 
for(Integer i = 0; i < 200; i++) {
    cons.add(new Contact(LastName = 'W1 Test ' + 1));
}
insert cons;

Integer ok = 0; 
for(contact c : [SELECT Description FROM Contact WHERE Id IN : cons]){
    if(c.Description == 'Created by trigger'){
        ok++;
    }
}
System.debug('Records with description set: ' + ok);