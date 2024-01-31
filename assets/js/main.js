document.addEventListener('DOMContentLoaded', function() {
    // Menambahkan smooth scroll untuk semua tautan di navbar
    var navLinks = document.querySelectorAll('.nav-links a');
    
    navLinks.forEach(function(link) {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            
            var targetId = this.getAttribute('href').substring(1);
            var targetElement = document.getElementById(targetId);
            
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - document.querySelector('.nav').offsetHeight,
                    behavior: 'smooth'
                });
            }
        });
    });
});