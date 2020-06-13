const stickyTagContainerOnScroll = () => {
  const tagsContainer = document.querySelector(".tags-container");
  // $(window).scroll(function (e) {
  //   var $el = $(".tagsContainer");
  //   var isPositionFixed = $el.css("position") == "fixed";
  //   if ($(this).scrollTop() > 200 && !isPositionFixed) {
  //     console.log(">200");
  //     $el.css({ position: "fixed", top: "0px" });
  //   }
  //   if ($(this).scrollTop() < 200 && isPositionFixed) {
  //     console.log("<200");
  //     $el.css({ position: "static", top: "0px" });
  //   }
  // });
};

export { stickyTagContainerOnScroll };
