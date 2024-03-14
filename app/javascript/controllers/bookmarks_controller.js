import { Controller } from "@hotwired/stimulus"
import mojs from 'mo-js'

// Connects to data-controller="bookmarks"
export default class extends Controller {
  static targets = ["icon"]
  connect() {
    console.log(mojs)
  }

  animation(event) {
    event.preventDefault()
    console.log(event.currentTarget)

    const timeline = new mojs.Timeline()

    const posY = event.clientY - 265

    const tween1 = new mojs.Burst({
      // https://github.com/mojs/mojs/blob/master/api/burst.md
      parent: this.element,
      duration: 1500,
      left: event.clientX,
      top: posY,
      shape : 'circle',
      fill : [ '#F76631', '#F76631', '#F76631' ],
      opacity: 1,
      childOptions: { radius: {20:0} },
      radius: {40:120},
      count: 10,
      isSwirl: true,
      easing: mojs.easing.bezier(0.1, 1, 0.3, 1)
    })

    const tween2 = new mojs.Transit({
      parent: this.element,
      duration: 750,
      left: event.clientX,
      top: posY,
      type: 'circle',
      radius: {0: 50},
      fill: 'transparent',
      stroke: '#F76631',
      strokeWidth: {15:0},
      opacity: 0.6,
      easing: mojs.easing.bezier(0, 1, 0.5, 1)
    })

    timeline.add(tween1);
    timeline.play();
    this.iconTarget.style.fill = "#F76631"
    this.iconTarget.style.stroke = "#F76631"

    const action = this.element.action
    setTimeout(() => {
      fetch(action, {
        method: "POST",
        headers: {
          'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
          'Accept': 'text/html',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: new URLSearchParams(new FormData(this.element)).toString()
      })
    }, 5000);
  }
}
