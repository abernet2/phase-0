
var button = document.getElementById("submit");
var test = document.getElementsByTagName('body');
var list = {};

function createItem(name, quantity) {
   var t = document.getElementById("item-template");
   var clone = document.importNode(t.content, true);
   // add name
   var n = clone.querySelector("input.name");
   n.addEventListener("dblclick",toggleEdit, false);
   n.addEventListener("blur",toggleEdit, false);
   n.addEventListener("keydown", function(event) {
      if (event.keyCode == 13) n.toggleEdit();}, false);
   n.value = name;
   n.classList.add(name.replace(" ",''));
   // add quantity
   var q = clone.querySelector("input.quantity");
   q.addEventListener("dblclick",toggleEdit, false);
   q.addEventListener("blur",toggleEdit, false);
   q.addEventListener("keydown", function(event) {
      if (event.keyCode == 13) q.toggleEdit();}, false);
   clone.querySelector("input.quantity").value = quantity;
   q.classList.add(quantity);
   return clone;
}

function update(name, quantity) {
   name = name.replace(" ","");
   var item = document.querySelector("input."+name);
   var quant = item.nextSibling.nextSibling;
   quant.value = quantity;
}

function changeName(elem, old_name, new_name) {
   elem.className = elem.classList[0] + " " + new_name;
   var q = list[old_name];
   delete list[old_name];
   list[new_name] = q;

}

function addItemFromInput() {
   var item = document.getElementById("ItemName").value;
   var quantity = document.getElementById("Quantity").value;
   var elem = createItem(item, quantity);
   

   if(isNaN(list[item])) {
      console.log(elem.firstElementChild);
      elem.firstElementChild.addEventListener("click", toggleActive, false);
      document.body.appendChild(elem);
   }
   else {
      update(item, quantity);
   }
   list[item] = quantity;
   console.log("List = ");
   console.log(list);
}

function toggleActive() {
   console.log(this.tagName);
   var curr = document.getElementsByClassName("active");
   if (curr.length !== 0) {
      curr[0].classList.remove("active")
   }
   else {
      this.classList.toggle("active");
   }
}

var toggleEdit = function() {
   console.log(this);
   this.readOnly = !this.readOnly;
   if (this.value != this.classList[1]) {
      changeName(this, this.classList[1], this.value);
   }
   console.log(list);
}
Element.prototype.toggleEdit = this.toggleEdit;

/*

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
   Event handlers were very confusing and this challenge was super helpful. For example, if I pass a function to an element via the
   html onclick property, the "this" of the function will be an event. But if I add an event listener, "this" will be the element
   that was selected. I guess that's why it's called an event listener, but still it was a little strange at first. Also the nodes
   of the dom work a little differently than expected, I got one node that just said #text, so that was strange.

What was the most difficult part of this challenge?
   Interacting with the DOM. Other than the difficulty of getting input, making a list really isn't hard in javascript compared to Ruby.
   Once I incorporated the DOM it adds a whole nother layer of abstraction. Implementing a list without repeats suddenly becomes a little
   trickier. You have to figure out a way to update the list any time the DOM is changed. I did this by adding the values of objects as 
   classes andthen I could always get their value back. It felt a little hacky so I'm hoping there's a better way. Also getting the text
   to be editable was tricky.

Did an array or object make more sense to use and why?
   An object since you would want to access variables by name.
   
 */
