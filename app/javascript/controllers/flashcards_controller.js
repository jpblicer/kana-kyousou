import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flashcards"
export default class extends Controller {
  static targets = [ "flashcard" ]

  connect() {
    console.log("Flashcard Controller connected")
  }

  checkAnswer() {
    console.log("Click Test")
  }
}
