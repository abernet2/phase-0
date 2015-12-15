// DOM Manipulation Challenge
// 
// What did you learn about the DOM?
   // A very preliminary amount of information about adding objects to the dom
   // and finding elements in the DOM. I guess I got more questions than answers
   // from this challenge. Like, is this how CSS does its work? Does it scan the
   // whole document the same way? I don't know, it sparked my curiosity more 
   // than anything.
//       
// What are some useful methods to use to manipulate the DOM?
   // Document.getElementByID, ByClassName, ByTagName
   // Document.Append()


// I worked on this challenge [with: David Ma].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:

document.getElementById("release-0").className = 'done';


// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

var h1 = document.getElementsByTagName("h1")[0].innerHTML = "I completed Release 2";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:

var release_4 = document.getElementsByClassName("release-4");
for (var i; i < release_4.length; i++) {
   release_4[i].style.fontSize = "2em";
}

// Relase 6:

var hidden = document.getElementById("hidden");
document.body.appendChild(hidden.content.cloneNode(true));