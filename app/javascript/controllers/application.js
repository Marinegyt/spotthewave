import { Application } from "@hotwired/stimulus"
// import ToggleIndexController from "./controllers/toggle_index_controller.js"
// Stimulus.register("toggle-index", ToggleIndexController)

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
