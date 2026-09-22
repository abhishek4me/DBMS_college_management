// Cavatta College Management - Theme and Interactive Navigation Handler
(function () {
  const STORAGE_KEY = "cavatta_theme";

  function getSavedTheme() {
    return localStorage.getItem(STORAGE_KEY) || "dark";
  }

  function applyTheme(theme) {
    const bigWrapper = document.querySelector(".big-wrapper");
    if (theme === "dark") {
      if (bigWrapper) {
        bigWrapper.classList.remove("light");
        bigWrapper.classList.add("dark");
      }
      document.body.classList.remove("light");
      document.body.classList.add("dark");
      document.documentElement.setAttribute("data-theme", "dark");
    } else {
      if (bigWrapper) {
        bigWrapper.classList.remove("dark");
        bigWrapper.classList.add("light");
      }
      document.body.classList.remove("dark");
      document.body.classList.add("light");
      document.documentElement.setAttribute("data-theme", "light");
    }
    try {
      localStorage.setItem(STORAGE_KEY, theme);
    } catch (e) {}
  }

  function init() {
    const savedTheme = getSavedTheme();
    applyTheme(savedTheme);

    const toggleBtn = document.querySelector(".toggle-btn");
    const bigWrapper = document.querySelector(".big-wrapper");
    const hamburgerMenu = document.querySelector(".hamburger-menu");

    if (toggleBtn) {
      toggleBtn.addEventListener("click", function (e) {
        e.preventDefault();
        const currentIsDark =
          document.body.classList.contains("dark") ||
          (bigWrapper && bigWrapper.classList.contains("dark"));
        const nextTheme = currentIsDark ? "light" : "dark";
        applyTheme(nextTheme);
      });
    }

    if (hamburgerMenu && bigWrapper) {
      hamburgerMenu.addEventListener("click", function () {
        bigWrapper.classList.toggle("active");
      });
    }
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init);
  } else {
    init();
  }
})();

