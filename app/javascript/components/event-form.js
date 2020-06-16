const toggleEventForm = () => {
  const eventForms = document.querySelectorAll(".event-form");
  const kidEvents = document.querySelectorAll(".kid-event");
  kidEvents.forEach(kidEvent => {
    kidEvent.addEventListener("click", e => {
      eventForms.forEach(eventForm => {
        eventForm.classList.add("d-none");
      });
      $(`#${e.target.id}-event-container`).toggleClass("d-none");
    });
  });
};

export { toggleEventForm };
