//Release 0
//Function that takes an array of words or phrases and returns the longest word or phrase in the array

function longest(array = []){
  var max = [0]
  for (var i = 1; i < array.length; i++){
    if (array[max].length < array[i].length) {
      max = i;
    }
    return array[max];
  }
}

//Release 1
//Function that takes two objects and checks to see if the objects share at least one key-value pair.

function compare_key(obj1, obj2) {
    for (var property in obj1) {
        if (obj1.hasOwnProperty(property)) {
            if(obj2[property] == obj1[property]) {
                return true;
            }
        }
    }
    return false;
}


//Release 2
//Function that takes an integer for length, and builds and returns an array of strings of the given length

function fill_array(x){
  var array = [];
  //generates random string of x length
  function random_string(x) {
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    for( var i=0; i < x; i++ ){
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
  }
  //fill array with random strings of radom length
  for(var i = 0; i < x; i++) {
    array[i] = random_string(Math.round((Math.random() * (10 - 1) + 1)));
  }
    return array;
}
//------------------------------------------------------------------------------
//driver code!
//Release 0
console.log(longest(["long word", "longest word", "longer word"]));
console.log(longest(["airplane", "car", "boat", "travel", "bus", "train"]));
console.log(longest(["alphabet", "letters", "writing"]));

//Release 1
var steven = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54, smart: "Yes"};
var mina = {name: "Mina", age:24, smart: "Yes"}

console.log(compare_key(steven, tamir));
console.log(compare_key(steven, mina));
console.log(compare_key(mina, tamir));

//Release 2
console.log(fill_array(5));

//Add driver code that does the following 10 times:
//1.Generates an array prints the array
//2. Feeds the array to your "longest word" function
//3.prints the result
var new_array = [];
for (i=0; i < 10 ; i++){
  new_array[i] = fill_array(Math.round((Math.random() * (10 - 1) + 1)));
  console.log(new_array[i]);
  console.log(longest(new_array[i]));
}
