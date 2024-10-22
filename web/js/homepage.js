window.onscroll = function () {
    var navbar = document.getElementsByClassName("header-container");
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        navbar.classList.add("scrolled");
    } else {
        navbar.classList.remove("scrolled");
    }
};

//form search không cho chung địa điểm
function searchFlights() {
    const departure = document.getElementById('departure').value;
    const destination = document.getElementById('destination').value;

    if (departure === destination) {
      alert('Departure and destination cannot be the same!');
    } 
    
  }