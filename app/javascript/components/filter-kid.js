const filterKidOnAvatarClick = () => {
  const avatarKids = document.querySelectorAll(".avatar-kids");
  const nounouForms = document.querySelectorAll(".nounou-form");
  avatarKids.forEach(kid => {
    kid.addEventListener("click", e => {
      console.log("clicknan");

      nounouForms.forEach(form => {
        form.classList.add("d-none");
      });
      console.log(`#${e.target.id}-container`);
      $(`#${e.target.id}-container`).toggleClass("d-none");
      $(".add-kid-form").addClass("d-none");
    });
  });
};

export { filterKidOnAvatarClick };
