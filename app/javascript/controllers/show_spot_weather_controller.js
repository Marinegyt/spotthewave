import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
  }

  showWeather() {
    console.log(this.element)
    this.element.classList.toggle("spot-details-open")
  }
}
