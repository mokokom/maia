const toggleAddKidForm = () => {
  const nounouForms = document.querySelectorAll(".nounou-form");
  const addKid = document.querySelector(".add-kid");
  const addKidForm = document.querySelector(".add-kid-form");
  addKid.addEventListener("click", () => {
    nounouForms.forEach(nounouForm => {
      nounouForm.classList.add("d-none");
    });
    $(addKidForm).toggleClass("d-none");
    // addKidForm.style.display =
    //   addKidForm.style.display === "none" ? "block" : "none";
  });
};

export { toggleAddKidForm };
