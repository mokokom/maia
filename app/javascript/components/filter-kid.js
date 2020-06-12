const filterKidOnAvatarClick = () => {
  const avatarKids = document.querySelectorAll(".avatar-kids");
  const nounouForms = document.querySelectorAll(".nounou-form");
  avatarKids.forEach(kid => {
    kid.addEventListener("click", e => {
      nounouForms.forEach(form => {
        form.classList.add("d-none");
      });
      $(`#add-nounou-${e.target.id}`).toggleClass("d-none");
      $(".add-kid-form").addClass("d-none");
    });
  });
};

export { filterKidOnAvatarClick };
