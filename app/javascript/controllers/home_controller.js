import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["video"]

  connect() {
    //console.log(this.videoTarget)
    this.videoTarget.play()
  }

  playVideo() {
    this.videoTarget.play()
  }
}
