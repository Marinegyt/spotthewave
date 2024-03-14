import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
  }

  showWeather(event) {
    if (event.currentTarget.dataset.collapse === "false") {
        event.currentTarget.dataset.collapse = "true";
        event.currentTarget.innerText = "Voir moins";
        this.element.classList.add("spot-details-open");
    } else {
        event.currentTarget.dataset.collapse = "false";
        event.currentTarget.innerText = "Tout voir";
        this.element.classList.remove("spot-details-open");
    }
}
}
