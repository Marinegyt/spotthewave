import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-index"
export default class extends Controller {
  static targets = ["tab", "map", "list"]
  static values = { defaultTab: String }

  connect() {
  }

  changetabs (event) {
    event.preventDefault();
    const text = event.currentTarget.children[0].innerText
    if (text === "Liste") {
      this.mapTarget.classList.add("hide-element");
      this.tabTarget.classList.add("liste-active");
      this.listTarget.classList.remove("d-none");

    } else {
      this.mapTarget.classList.remove("hide-element");
      this.listTarget.classList.add("hide-element");
      this.tabTarget.classList.remove("liste-active");
    }


  };
}
