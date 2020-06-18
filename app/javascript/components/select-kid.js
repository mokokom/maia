const selectKid = () => {
  const kidsSelected = document.querySelectorAll('.avatar-kids');
  if (kidsSelected.length > 0) {
    kidsSelected.forEach(kid => {
      kid.addEventListener('click', toggleKids);
    });
  }
};

const toggleKids = (event) => {
   // enlever le selected sur tous les enfants
  const kidsSelected = document.querySelectorAll('.avatar-kids');
  kidsSelected.forEach(kid => {
    kid.classList.remove('select-kid-border');
  });
  // ajouter la classe associée
  event.currentTarget.classList.add('select-kid-border');
};


const colorTags = () => {
   // enlever le selected sur tous les enfants
  console.log('hello');
  const tags = document.querySelectorAll('input.tag-check');
      console.log(tags);

  tags.forEach(tag => {
    console.log(tag.parentElement);
    const tagName = tag.value;
    tag.parentElement.classList.add(tagName);
  });
};

const initTagsBorder = () => {
   // enlever le selected sur tous les enfants
  const tags = document.querySelectorAll('.tag-box');
  tags.forEach(tag => {
    tag.addEventListener('click', toggleBorder);
  });
};

const toggleBorder = (event) => {
   // enlever le selected sur tous les enfants
  const kidsSelected = document.querySelectorAll('.tag-box');
  kidsSelected.forEach(kid => {
    kid.classList.remove('select-kid-border');
  });
  // ajouter la classe associée
  event.currentTarget.classList.add('select-kid-border');
};

export { selectKid, colorTags, initTagsBorder };


