import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"

// Quand avis : left: 2PX
// QUAND PHOTO : 158px;
// Quand Carte : 320px;

export default class extends Controller {
    static targets = ["content", "tab", "underline"];


    switchTab(event) {
      event.preventDefault();

      const clickedTab = event.currentTarget;
      const tabName = clickedTab.dataset.tab;


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
          console.log(parseInt(event.currentTarget.dataset.left))
          this.underlineTarget.style.left = `${parseInt(event.currentTarget.dataset.left)}px`
          tab.classList.add("active")
        } else {
          tab.classList.remove("active")
        }
      })
    }

}
