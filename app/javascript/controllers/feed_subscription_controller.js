import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="feed-subscription"
export default class extends Controller {
  static values = {userId: Number}
  static targets = ["messages"]
  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "FeedChannel", id: this.userIdValue },
      { received: data => this.messagesTarget.insertAdjacentHTML("afterbegin", data) }
    )
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
