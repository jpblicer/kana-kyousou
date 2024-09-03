import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flashcards"
export default class extends Controller {
  static targets = [ "maincard" ]

  connect() {
    console.log("Flashcard Controller connected")
  }

  checkAnswer(event) {
    const element = event.currentTarget.innerText
    console.log(`${element}`)
    console.log(this.maincardTarget)
  }
}
