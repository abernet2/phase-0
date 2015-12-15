// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


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