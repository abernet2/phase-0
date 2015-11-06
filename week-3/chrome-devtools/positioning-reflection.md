#How can you use Chrome's DevTools inspector to help you format or position elements?

Instead of writing code to test something out, I can test something in chrome and
hit refresh if it doesn't work. If the changes are appropriate, I've been told
that you can actually export the changes from chrome somehow (I'm going to look 
into this). It's a good sandbox basically.

#How can you resize elements on the DOM using CSS?

You can change their width or height in the case of items displayed as blocks.
Additionally you can add padding to an object as well as line height for text 
elements.

#What are the differences between absolute, fixed, static, and relative
positioning? Which did you find easiest to use? Which was most difficult?

###Static

The default setting in which an object basically only moves in reaction to the
placement of other objects as well as their margins. This helps set the flow
of html elements so that they don't overlap.

###Fixed

The position of the object is relative to the window and not to the html page.
This makes an element stay in a certain position, regardless of scrolling or 
other elements.

###Relative

If you enable relative without any other attributes, it will act exactly the same
as static. Basically, relative is like static + all sorts of positioning 
capabilities. With relative, you can change an objects location based on where it
would be if it were a static element. You can also use the z-index and elements
nested within a relatively positioned element will act differently if positioned 
with the absolute attribute.

###Absolute

Lets you set a specific position for an element. Using top/bottom/etc, you can
position relative to its first parent div that is either relatively or absolutely
positioned. The trade off is that absolute ignores the flow of regular html 
elements. So if you position something with absolute within a static div, it will
position relative to the html element (or the first relative/absolute element).

#What are the differences between margin, border, and padding?

###Margin

Imagine each element is a house. The margin is the yard. there isn't usually any
structure there, it's yours but you don't really make use of it, it is used mostly
for spacing and appearance.

###Border

In the house metaphor, the border would be the walls of your house. It is the
dividing line between where the background will fill and where it won't (sort of 
like indoor/outdoors I guess). Unlike walls, border are optional and come in a 
variety of styles.

###Padding

Finally, padding is also empty space (like a margin), but inside of the border. 
Padding allows for open space within an element.


#What was your impression of this challenge overall? (love, hate, and why?)

I didn't have strong feelings towards this challenge, it mostly felt like busy
work. I kind of already knew most of the material we covered, but I understand
experience levels are all over the place and that's why Phase 0 exists. I did 
appreciate how it combined dev tools with the positioning so that the excercise
served two purposes, but I was already mostly familiar with both so it felt
like I didn't really need to challenge myself too much, although a couple things
tripped me up.

##Images

![Challenge1 Pic](imgs/Challenge1.png)

![Challenge2 Pic](imgs/Challenge2.png)

![Challenge3 Pic](imgs/Challenge3.png)

![Challenge4 Pic](imgs/Challenge4.png)

![Challenge5 Pic](imgs/Challenge5.png)

![Challenge6 Pic](imgs/Challenge6.png)

![Challenge7 Pic](imgs/Challenge7.png)

![Challenge8 Pic](imgs/Challenge8.png)

![Challenge9 Pic](imgs/Challenge9.png)
