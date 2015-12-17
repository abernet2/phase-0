
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
   if(this.tagName != "input") {
      var curr = document.getElementsByClassName("active");
      if (curr.length !== 0) {
         curr[0].classList.remove("active")
      }
      else {
         this.classList.toggle("active");
      }
   }
   else console.log("TEST");
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
