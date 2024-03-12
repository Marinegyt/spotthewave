import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"

export default class extends Controller {
    static targets = ["content", "tab"];


    switchTab(event) {
      event.preventDefault();
      console.log(event)
      const clickedTab = event.currentTarget;
      const tabName = clickedTab.dataset.tab;
      console.log(tabName)

      // Masque tous les contenus d'onglet
      this.contentTargets.forEach(content => {
        if (content.dataset.content === tabName) {
          content.classList.remove("d-none")
        } else {
          content.classList.add("d-none")
        }
      });
      this.tabTargets.forEach(tab => {
        if (event.currentTarget === tab) {
          tab.classList.add("active")
        } else {
          tab.classList.remove("active")
        }
      })
    }

}
