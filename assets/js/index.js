
document.addEventListener("DOMContentLoaded", function () {
    const sideNav = document.getElementById("sideNav");
    const logo = document.getElementById("logo");
    const navLinks = sideNav.querySelectorAll(".nav-link");

    const cvSection = document.getElementById("cv");
    const portfolioSection = document.getElementById("portfolio");
    const designsSection = document.getElementById("design");

    const updateNavStyle = () => {
        const scrollPos = window.scrollY || window.pageYOffset;

        const cvTop = cvSection.offsetTop;
        const portfolioTop = portfolioSection.offsetTop;
        const designsTop = designsSection.offsetTop;

        // CV section OR Designs section → Light mode
        if (
            (scrollPos >= cvTop - 50 && scrollPos < portfolioTop - 50) ||
            (scrollPos >= designsTop - 50)
        ) {
            logo.src = "assets/img/lightLogo.svg";
            navLinks.forEach(link => link.style.color = "#FDFDFD");
        } 
        else {
            // Default → Dark mode
            logo.src = "assets/img/darkLogo.svg";
            navLinks.forEach(link => link.style.color = "");
        }
    };

    // Initial check
    updateNavStyle();

    // Update on scroll
    window.addEventListener("scroll", updateNavStyle);
});
