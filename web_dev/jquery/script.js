console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("turtle-photo");
photo.addEventListener("click", addPinkBorder);

function hideTurtle(event) {
photo.hidden = true
}

document.getElementById("hide").addEventListener("click", hideTurtle);

function revealTurtle() {
photo.hidden = false
}

document.getElementById("show").addEventListener("click", revealTurtle);
