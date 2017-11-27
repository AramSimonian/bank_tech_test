# Bank tech test
This is the first tech test for Week 10.

It is a console app written in Ruby that accepts deposits, withdrawals and can print a bank statement to the console.

The provided user stories/requirements:
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Approach
I concluded that a bank account class should have a collection of transaction classes,
each of which has date and amount along with the account balance after this transaction
was carried out.

I intend to have a print details class that would accept a bank account and would work through its transactions to print out to the console.
