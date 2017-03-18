console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lion-photo");
photo.addEventListener("click", addPinkBorder);

function hideLion(event) {
photo.hidden = true
}

document.getElementById("hide").addEventListener("click", hideLion);

function revealLion() {
photo.hidden = false
}

document.getElementById("show").addEventListener("click", revealLion);
