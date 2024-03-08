import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rating"
export default class extends Controller {
  static targets = ["rateField", "star"]
  connect() {
  }


  #toggleColorStars = (starRate) => {
    this.starTargets.forEach((star, index) => {
      if (index <= starRate - 1) {
        star.classList.add("fas")
        star.classList.remove("far")
      } else {
        star.classList.remove("fas")
        star.classList.add("far")
      }
    })
  }

  rate(event) {
    const clickedStar = event.target
    const starList = this.starTargets
    const starRate = starList.indexOf(clickedStar) + 1
    this.rateFieldTarget.value = starRate
    this.#toggleColorStars(starRate)
  }
}
