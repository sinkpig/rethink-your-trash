import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-description-field"
export default class extends Controller {
  static targets = ["description"]

  connect() {
    console.log("show decription field controller conected")
  }

  show(event) {
    if (event.target.value == "cooperative") {
      this.descriptionTarget.classList.remove("d-none")
    }
    else {
      this.descriptionTarget.classList.add("d-none")
    }
  }

}
