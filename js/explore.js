//creates string of the word in reverse
function reverse(str){
  var word = "";
  for (var i = str.length -1; i > -1; i -= 1){
    word = word.concat(str[i]);
  }
  console.log(word);
}

//fills an array with letters from the original string in the reverse order.
function backwords(str){
  var word = [];
  for (var i = str.length -1; i > -1; i -= 1){
    word.push(str[i]);
  }
  console.log(word);
}


reverse("hello");
backwords("hello");
1==1;
