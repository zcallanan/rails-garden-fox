const bookingBtn = () => {
  const btn = document.getElementById('booking-btn')

  btn.addEventListener('click', () => {
    document.querySelector(".booking-request").classList.add("show"); 
  })
}

export { bookingBtn }