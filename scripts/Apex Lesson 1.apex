String name = 'Ashmita';
Date today = Date.today(); 
Integer count = 30; 
Decimal price = 120.59;
Boolean isActive = true; 
Id clientId; 
Integer x;
system.debug('this is the value of x ' + x);
x++; 
system.debug('When x is used in a counter, it equals ' + x);

System.debug('30 days from today is ' + today.addDays(count));
System.debug('The price rounded down to 0 decimal places ' + price.round());
System.debug('The name in lowercase looks like this ' + name.toLowerCase());

Assert.areEqual(121, price.round(), 'Price of 120.59 should round up to 121');