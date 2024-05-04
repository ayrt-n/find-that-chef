import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "button"]

  toggle() {
    this.menuTarget.style.display = this.menuTarget.style.display === 'none' ? '' : 'none';
  }

  hide(event) {
    if (this.buttonTarget.contains(event.target) || this.menuTarget.contains(event.target)) {
      return;
    }
    this.menuTarget.style.display = 'none'
  }
}