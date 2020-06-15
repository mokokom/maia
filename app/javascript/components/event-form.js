const toggleEventForm = () => {
  const eventForms = document.querySelectorAll(".event-form");
  const testEvent = document.querySelectorAll(".test-event");

  testEvent.forEach(t => {
    t.addEventListener("click", e => {
      eventForms.forEach(eventForm => {
        eventForm.classList.add("d-none");
      });
      console.log(e.target.id);
      $(`#${e.target.id}-event-container`).toggleClass("d-none");
    });
  });
};

export { toggleEventForm };
