List<Lead>leads = new List<Lead>(); 
for(Integer i = 0; i < 200; i++) {
    leads.add(new Lead(LastName = 'W1 Test ' + i, Company = i + 'Company');
}
insert leads;

Integer ok = 0; 
for(lead c : [SELECT Description FROM Contact WHERE Id IN : cons]){
    if(c.Description == 'Created by trigger'){
        ok++;
    }
}
System.debug('Records with description set: ' + ok);