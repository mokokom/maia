const scrollToTop = () => {
  const topTop = document.querySelector(".to-top");
  window.onscroll = () => {
    scrollFunction();
  };

  const scrollFunction = () => {
    if (
      document.body.scrollTop > 200 ||
      document.documentElement.scrollTop > 200
    ) {
      topTop.style.display = "block";
    } else {
      topTop.style.display = "none";
    }
  };
  topTop.addEventListener("click", () => {
    const topFunction = () => {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    };
    topFunction();
  });
};

export { scrollToTop };
