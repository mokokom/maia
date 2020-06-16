const filterKidOnAvatarClick = () => {
  const avatarKids = document.querySelectorAll(".avatar-kids");
  // const cardKid = document.querySelectorAll(".card");
  const nounouForms = document.querySelectorAll(".nounou-form");
  avatarKids.forEach(kid => {
    kid.addEventListener("click", e => {
      nounouForms.forEach(form => {
        form.classList.add("d-none");
      });
      // $(`.${"active-kid"}`).removeClass("active-kid");
      // $(`#${e.target.id}`).toggleClass("active-kid");
      $(`#${e.target.id}-container`).toggleClass("d-none");
      $(".add-kid-form").addClass("d-none");
    });
  });
};

export { filterKidOnAvatarClick };
