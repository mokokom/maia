const toggleAddKidForm = () => {
  const nounouForms = document.querySelectorAll(".nounou-form");
  const addKid = document.querySelector(".add-kid");
  const addKidForm = document.querySelector(".add-kid-form");
  if (addKid) {
    addKid.addEventListener("click", () => {
      console.log("ok");
      nounouForms.forEach(nounouForm => {
        nounouForm.classList.add("d-none");
      });
      $(`.${"active-kid"}`).removeClass("active-kid");
      $(addKidForm).toggleClass("d-none");
      // addKidForm.style.display =
      //   addKidForm.style.display === "none" ? "block" : "none";
    });
  }
};

export { toggleAddKidForm };
