#What does puts do?

Puts prints whatever string you give it and then it puts a new line on the back
of it so that it sits on its own. You could also use p or print but they dont 
add the new line character. Puts also doesnt return the value you give it, 
it simply prints it. 

#What is an integer? What is a float?

An integer is a number without decimals at the back and a float is a number with
decimals. Because numbers are stored in bits and bytes, its much easier to store
whole numbers and they are also used more often. 

#What is the difference between float and integer division?
How would you explain the difference to someone who doesnt know anything about
programming?

###Integer Division

Integer division always returns a whole number. For example, 15 / 2 will be 7.
If you want the remainder, you can do 15 % (mod) 2 and get 1, and so you can
know that 15/2 is 7R1, just like grade school arithmetic.

###Floating Point Division

Floating Point Division works more like a calculator: it gives you a pretty
exact result. 15/2 would be 7.5 with floating point division.

I would describe the difference to someone who knows nothing about programming
as, basically, do you want a remainder or a decimal from your division? Although
you should keep your ear out for more information on the differences between 
floats and integers.

## Ruby Code
```
daysPerYear = 365
hoursPerDay = 24
puts daysPerYear * hoursPerDay
```

```
yearsPerDecade = 10
daysPerYear = 365
hoursPerDay = 24
minutesPerHour = 60
puts yearsPerDecade * daysPerYear * hoursPerDay * minutesPerHour
```
