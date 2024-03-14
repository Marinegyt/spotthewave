import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="like-subscription"
export default class extends Controller {
  static values = {userId: Number}
  // static targets = ["messages"]

  connect() {
    // userId
    // reviewId
    console.log("Hello from Like channel")
    console.log(this.userIdValue)
    this.channel = createConsumer().subscriptions.create(
      { channel: "LikeChannel", id: this.userIdValue },
      // { received: data => console.log(data) }
      { received: data => document.getElementById(`review-likes-${data.review_id}`).innerHTML = data.partial }
    )
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
