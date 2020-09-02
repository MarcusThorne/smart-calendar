const collapse = () => {
  var coll = document.querySelector(".collapsible");
  var showCard = document.querySelector(".show-card");
  // var i;


  showCard.addEventListener("click", function() {
    showCard.classList.toggle("active");
    console.log("click");
    // var content = this.nextElementSibling;
    // if (showCard.style.display === "block") {
    //   showCard.style.display = "none";
    // } else {
    //   showCard.style.display = "block";
    // }
  });
}

export { collapse }
