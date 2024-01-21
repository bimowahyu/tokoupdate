const nav = document.querySelector(".nav"),
  searchIcon = document.querySelector("#searchIcon"),
  navOpenBtn = document.querySelector(".navOpenBtn"),
  navCloseBtn = document.querySelector(".navCloseBtn");

const smoothScroll = (targetId) => {
  const targetElement = document.getElementById(targetId);
  if (targetElement) {
    window.scrollTo({
      top: targetElement.offsetTop - 50, // Sesuaikan offset sesuai kebutuhan
      behavior: "smooth"
    });
  }
};

// Tambahkan event listener untuk setiap tautan navigasi
const navLinks = document.querySelectorAll('.nav-links a');
navLinks.forEach(link => {
  link.addEventListener('click', (event) => {
    // Tutup navigasi
    nav.classList.remove("openNav");

    // Cegah event default untuk menghindari pengalihan ulang halaman
    event.preventDefault();

    // Dapatkan id bagian target dari atribut href
    const targetHref = link.getAttribute('href').substring(1);

    // Bergulir secara lancar ke bagian target
    smoothScroll(targetHref);
  });
});

searchIcon.addEventListener("click", () => {
  nav.classList.toggle("openSearch");
  nav.classList.remove("openNav");
  if (nav.classList.contains("openSearch")) {
    return searchIcon.classList.replace("uil-search", "uil-times");
  }
  searchIcon.classList.replace("uil-times", "uil-search");
});

navOpenBtn.addEventListener("click", () => {
  nav.classList.add("openNav");
  nav.classList.remove("openSearch");
  searchIcon.classList.replace("uil-times", "uil-search");
});

navCloseBtn.addEventListener("click", () => {
  nav.classList.remove("openNav");
});
