function reverse(str){
  var word = "";
  for (var i = str.length -1; i > -1; i -= 1){
    word = word.concat(str[i]);
  }
  console.log(word);
}

reverse("hello");
1==1;
