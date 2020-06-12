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

// const toggleAddKidForm = () => {
//   const addKid = document.querySelector(".add-kid");
//   const addKidForm = document.querySelector(".add-kid-form");
//   addKid.addEventListener(
//     "click",
//     function () {
//       console.log(addKidForm.classList.contains("hidden"));
//       if (addKidForm.classList.contains("hidden")) {
//         addKidForm.classList.remove("hidden");
//         setTimeout(function () {
//           addKidForm.classList.remove("visuallyhidden");
//         }, 20);
//       } else {
//         addKidForm.classList.add("visuallyhidden");
//         addKidForm.addEventListener(
//           "transitionend",
//           function (e) {
//             addKidForm.classList.add("hidden");
//           },
//           {
//             capture: false,
//             once: true,
//             passive: false,
//           }
//         );
//       }
//     },
//     false
//   );
// };

// export { toggleAddKidForm };
