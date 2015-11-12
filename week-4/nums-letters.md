### Programming Assignment Links

[Defining Variables]("https://github.com/abernet2/phase-0/blob/master/week-4/defining-variables.rb")

[Simple Strings]("https://github.com/abernet2/phase-0/blob/master/week-4/simple-string.rb")

[Basic Math]("https://github.com/abernet2/phase-0/blob/master/week-4/basic-math.rb")

# Release 7 Reflections

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Pretty much like the normal math, it obeys order of operations and can perform any of
those on most numbers, although there are limitations to how specific or large the ans-
wer can be. 

Where it diverges from normal math is that it treats numbers with decimals differently.
If Ruby sees a decimal on a number that you enter, it will store it and treat it as a
floating point (number with a decimal). If you want to mix them, it will always give
you a float for an answer. If you want to divide two fixnums (numbers without decimals)
with the result of a float, then you need to convert one to a float. 15/2 will never
return 7.5 if you dont.


##What is the difference between integers and floats?

Integers aren't encoded to store decimals, floats are. [Here's a demonstration]("http://www.dummies.com/how-to/content/the-real-difference-between-integers-and-floatingp.html").
You might think, 'why don't I just use floats all the time?' For the same amount
of memory, you can store bigger numbers if you don't include decimals. Also it's
just simpler, and sometimes you might actually want to use remainders and whole 
number division. 

##What is the difference between integer and float division?

Integer division returns a quotient or a remainder. Float returns a decimal number.

##What are strings? Why and when would you use them?

Strings are a how we store text in vairables. You would use them to manipulate any
textual data, or to communicate with yourself or the user of your program. You can
also use strings to deal with input or information that comes from text.

##What are local variables? Why and when would you use them?

Local variables are variables that live inside a specific method or class.

You would use them to keep your code organized and multifunctional. Say you make a
function that adds numbers 'a' and 'b', if these were not local variables you could
not declare an 'a' or 'b' anywhere else in your program without potential corruption.

##How was this challenge? Did you get a good review of some of the basics?

I feel pretty comfortable with all of this stuff. I actually find the reflection
more useful than the challenges since I already have habits and quick reactions for
these tinier assignments, I feel like I get more use out of examining those habits
and also I want to say things in these reviews that I'm not sure of, so it forces 
me to re-research things I thought I already knew.

# Release 2 Reflections
##What does puts do?

Puts prints whatever string you give it and then it puts a new line on the back
of it so that it sits on its own. You could also use p or print but they dont 
add the new line character. Puts also doesnt return the value you give it, 
it simply prints it. 

##What is an integer? What is a float?

An integer is a number without decimals at the back and a float is a number with
decimals. Because numbers are stored in bits and bytes, its much easier to store
whole numbers and they are also used more often. 

##What is the difference between float and integer division?
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
