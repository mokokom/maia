const selectKid = () => {
  const kidsSelected = document.querySelectorAll('.avatar-kids');
  kidsSelected.forEach(kid => {
      kid.addEventListener('click', () => {
        kid.classList.add('select-kid-border');
    });
  });
};
export { selectKid };
