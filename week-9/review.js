
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

Currently the code looks very messy. I'm trying very hard to avoid the
temptation to use Jquery, I want to learn more javascript before I hit
that easy button. Just assigning event handlers is a bit of an issue.
Right now I can't figure out a way to get the toggleActive method to act
right with a double click.

Also ideally I'd want the functionality where if you change a name to a 
name that already is in the list, it gets rid of one of them. Getting
a site that automatically adds an element when you give it a value wasn't
very difficult, but getting that to sync with the javascript list is
proving very difficult.

 */