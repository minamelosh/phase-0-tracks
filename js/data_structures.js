// Declare two separate arrays:
// One with four colors


var colors = ["Blue", "Yellow", "Red", "Green"];
var names = ["Ed", "Bert", "Scarlett", "Julie"];

colors.push("Pink");
names.push("Omar");

/*
console.log(colors);
console.log(names);

for (var i = 0; i < colors.length; i ++) {console.log(colors[i])}
for (var i = 0; i < names.length; i ++) {console.log(names[i])}

console.log(names.splice(1,3))
console.log(names)
*/

// Here are two ways to add the names to colors, as pairs.

var new_list = colors.concat(names)
console.log(new_list)

var combined_list = {}

for (var i = 0; i < colors.length; i ++) {
	for (var j = 0; j < names.length; j ++) {
		if (i === j) {
			combined_list[names[j]] = colors[i]
		}
	}
}

console.log(combined_list);


var horses = {};
for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);


// =============================================

function Car(year, make, model, isPopular) {

	console.log("Our new car:", this);

	this.year = year;
	this.make = make;
	this.model = model;
	this.isPopular = isPopular;

 this.allwheeldrive = function() { console.log("Vroom!"); };

this.horsepower = function(num) { console.log ("This car's horsepower is " + num + "hp.");};

 console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");
var newCar = new Car(2017, "Tesla", "Model T", true);
console.log(newCar);
console.log("Our car has all wheel drive:");
newCar.allwheeldrive();
newCar.horsepower(300);
console.log("-------");

// Attempt to add to object outside of the constructor function! It works!
console.log(newCar.used = false);
console.log(newCar["brandnew"] = true);
console.log(newCar)

function showObject(obj){
	for(var key in obj){
		console.log("The key is:" + key + ", the value is: " + obj[key]);
	}
}

showObject(newCar);
