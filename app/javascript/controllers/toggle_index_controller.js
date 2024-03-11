import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-index"
export default class extends Controller {
  static targets = ["tab", "map", "list"]
  static values = { defaultTab: String }

  changetabs (event) {
    event.preventDefault();
    const text = event.currentTarget.children[0].innerText
    if (text === "Liste") {
      this.mapTarget.classList.add("d-none");
      this.tabTarget.classList.remove("map-active");
      this.listTarget.classList.remove("d-none");

    } else {
      this.mapTarget.classList.remove("d-none");
      this.listTarget.classList.add("d-none");
      this.tabTarget.classList.add("map-active");
    }


  };
}
