const scrollToTop = () => {
  const toTop = document.querySelector(".to-top");
  if (toTop) {
    window.onscroll = () => {
      scrollFunction();
    };
  }

  const scrollFunction = () => {
    if (
      document.body.scrollTop > 200 ||
      document.documentElement.scrollTop > 200
    ) {
      toTop.style.display = "block";
    } else {
      toTop.style.display = "none";
    }
  };
  if (toTop) {
    toTop.addEventListener("click", () => {
      const topFunction = () => {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      };
      topFunction();
    });
  }
};

export { scrollToTop };
