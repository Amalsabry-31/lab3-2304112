(function () {
    var saved = localStorage.getItem("theme");
    if (saved === "dark") {
        document.documentElement.classList.add("dark");
    }

    window.toggleTheme = function () {
        var isDark = document.documentElement.classList.toggle("dark");
        localStorage.setItem("theme", isDark ? "dark" : "light");
    };
})();