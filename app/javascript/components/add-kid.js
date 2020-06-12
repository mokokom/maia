const toggleAddKidForm = () => {
  const addKid = document.querySelector(".add-kid");
  const addKidForm = document.querySelector(".add-kid-form");
  addKid.addEventListener("click", () => {
    $(addKidForm).toggleClass("d-none");

    // addKidForm.style.display =
    //   addKidForm.style.display === "none" ? "block" : "none";
  });
};

export { toggleAddKidForm };
