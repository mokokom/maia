const filterTag = () => {
  const food = document.querySelector(".food");
  const sleep = document.querySelector(".sleep");
  const activity = document.querySelector(".activity");
  const health = document.querySelector(".health");
  const diaper = document.querySelector(".diaper");
  const photo = document.querySelector(".photo");
  const foodCards = document.querySelector("div[data-tag=repas]");
  console.log("tag");
  document.querySelectorAll("div[data-tag]").forEach(tag => {
    console.log(tag.attributes["data-tag"].value);
  });
  console.log("tag-icon");
  document.querySelectorAll(".tag-box").forEach(tag => {
    console.log(tag.attributes["data-tag-icon"]);
  });
  food.addEventListener("click", e => {
    const dataTags = document.querySelectorAll("div[data-tag]");
    dataTags.forEach(dataTag => {
      dataTag.classList.add("d-none");
      // foodCards.classList.add("d-block");
      $(foodCards).addClass("d-block");
    });
    // console.log(foodCards);
  });
};

const filterEvents = () => {
  // Selectionner ts les btn de critères
  // Micro sur chaque btn a l'event click
  // Si data-selected == false
  // recuperer le type et la valeurs de critères
  // si il y a deja un autres btn du meme type de critère selectionné
  // cherche les cartes qui corresponsent au type + valeur qu'on cherche
  // toggle d-none
  // passer data-selected à true
  // sinon
  //cacher tte les cartes qui n'ont pas ce type et cette valeur la
  // passer data-selected à true
  // Si data-selected == true
  // si il a un autre btn du mm type de crite selectionné
  // on toggle le d-none sur les cartes de ce type de crite et de cette valeur de critere
  // on change le data-selected à false
  // sinon ..
};

const initCriterias = () => {
  // Selectionner ts les btn de critères
  const btnCriteriasType = document.querySelectorAll("div[data-criteria-type]");
  const btnCriteriasValue = document.querySelectorAll(
    "div[data-criteria-value]"
  );
  // console.log(btnCriteriasType);
  // console.log(btnCriteriasValue);
  // Micro sur chaque btn a l'event click
  btnCriteriasType.forEach(btn => {
    btn.addEventListener("click", e => {
      // on passe le data-selected à l'opposé de sa valeur precedente
      // $(btn).toggleClass("active-kid");

      if (btn.dataset.selected == "false") {
        btn.dataset.selected = "true";
      } else {
        btn.dataset.selected = "false";
      }
      // if (e.target.dataset.selected == "false") {
      //   e.target.dataset.selected = "true";
      // } else {
      //   e.target.dataset.selected = "false";
      // }
      // on récupère ts les btn de critères enfant (getCriteria("kid"))
      const kidCriteria = getCriterias("kid");
      console.log(kidCriteria);
      // on récupère ts les btn de critères tag (getCriteria("tag"))
      const tagCriteria = getCriterias("tag");
      console.log(tagCriteria);

      const url = new URL("https://maiawagon.herokuapp.com/dashboard");
      // const url = new URL("/dashboard", "http://localhost:3000");
      const params = { kids: kidCriteria, tags: tagCriteria };
      url.search = new URLSearchParams(params).toString();
      // fetch(url);
      window.location.href = url;
    });
  });
  // on envoi une requete avec les critère avec en params les critères récuperé
  // fetch sur /dashboard et passer params si il y en a
};

const getCriterias = type => {
  // Sélect ts les btn de critères pr lesquel le data-selected est true doc.querySeleAll(`div[data-criteria-type=${type}`]).fiter(datase-selected = true)
  const btnCriteriasTypeSelected = document.querySelectorAll(
    `div[data-criteria-type=${type}]`
  );
  // console.log(btnCriteriasTypeSelected);
  const selectedCriterias = [];
  btnCriteriasTypeSelected.forEach(btn => {
    if (btn.dataset.selected == "true") selectedCriterias.push(btn.dataset);
  });
  // console.log(selectedCriterias);
  // btnCriteriasTypeSelected.filter(btn => console.log(btn));
  //   .filter("div[data-selected=true]");

  // map sr le tableau pour recup la valeur de chaque noeux
  // join le tableau avec __
  let criterias = selectedCriterias.map(criteria => criteria.criteriaValue);

  // console.log(criterias.join("__"));
  return criterias.join("__");
};

export { initCriterias };
