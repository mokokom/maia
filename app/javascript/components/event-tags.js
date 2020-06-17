const eventTags = () => {
  const tagRepas = document.querySelector('#event_tag_repas');
  tagRepas.insertAdjacentHTML('afterend', '<div class="new-tag"></div>');

  const tagDodo = document.querySelector('#event_tag_dodo');
  tagDodo.insertAdjacentHTML('afterend', '<div class="new-tag"></div>');

  const tagSante = document.querySelector('#event_tag_santé');
  tagSante.insertAdjacentHTML('afterend', '<div class="new-tag"></div>');

  const tagChange = document.querySelector('#event_tag_change');
  tagChange.insertAdjacentHTML('afterend', '<div class="new-tag"></div>');

  const tagActivite = document.querySelector('#event_tag_activité');
    tagActivite.insertAdjacentHTML('afterend', '<div class="new-tag"></div>');

  const tagPhoto = document.querySelector('#event_tag_photo');
  tagPhoto.insertAdjacentHTML('afterend', '<div class="new-tag"></div>');
};

export { eventTags };
