String name = 'Ashmita';
Date today = Date.today(); 
Integer count = 30; 
Decimal price = 120.59;
Boolean isActive = true; 
Id clientId; 

System.debug('30 days from today is ' + today.addDays(30));
System.debug('The price rounded down to 0 decimal places ' + Math.floor(price));
System.debug('The name in lowercase looks like this ' + name.toLowerCase());