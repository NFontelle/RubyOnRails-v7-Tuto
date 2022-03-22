import { Controller } from "@hotwired/stimulus"
import jquery from "jquery"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
