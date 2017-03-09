eclare two separate arrays:
// One with four colors

var colors = ["Blue", "Yellow", "Red", "Green"];
var names = ["Ed", "Bert", "Scarlett", "Julie"];

// push an element to the last position of the array.
colors.push("Pink");
names.push("Omar");

console.log("push an element to the last position of the array")
// display the array
console.log(colors);
console.log(names);

// push an element to the first position of the array.
colors.unshift("White");
names.unshift("Mina");

console.log("push an element to the first position of the array")
// display the array
console.log(colors);
console.log(names);

// removes the last element of the array.
colors.pop();
names.pop();

console.log("removes the last element of the array")
// display the array
console.log(colors);
console.log(names);

// removed the first element of the array.
colors.shift();
names.shift();

console.log("removed the first element of the array")
// display the array
console.log(colors);
console.log(names);

//display each element in the array
for (var i = 0; i < colors.length ; i++){
	console.log (colors[i])
}

//Remove a set elements from the array
console.log(names.splice(1,3));
// removes thhree elements from the first element in the index 1.

// dispaly the array after the splice.
console.log(names);
