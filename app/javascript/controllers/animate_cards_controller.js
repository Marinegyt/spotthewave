import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card"]

  connect() {
    // Nouvel instance d'observer qui bouffe les projets
    const projectObserver = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {

        if (entry.isIntersecting) {
          // Qu'est-ce qui se passe quand l'élément est visible
          entry.target.style.opacity = 1;
          entry.target.style.transform = "scale(1)";
        } else {
          // Qu'est-ce qui se passe quand il est pas visible
          entry.target.style.opacity = 0.5;
          entry.target.style.transform = "scale(0.5)";
        }
      });
    },
    {
      threshold: 0.5
    }
    );

    this.cardTargets.forEach((card, i) => {
      projectObserver.observe(card);
    });
  }
}
