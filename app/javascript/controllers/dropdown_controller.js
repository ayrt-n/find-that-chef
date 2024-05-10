import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "button", "menuItem"]
  static values = { open: { type: Boolean, default: false } }

  connect() {
    document.addEventListener("turbo:before-cache", this.beforeCache.bind(this));
  }

  disconnect() {
    document.removeEventListener("turbo:before-cache", this.beforeCache.bind(this));
  }

  toggle() {
    this.openValue = !this.openValue
    this.menuTarget.classList.toggle("hidden");
  }

  show() {
    this.openValue = true;
    this.menuTarget.classList.remove("hidden");
  }

  hide(event) {
    if (this.openValue && (this.element.contains(event.target) === false || event.key === 'Escape')) {
      this.openValue = false;
      this.menuTarget.classList.add("hidden");
    }
  }

  openValueChanged() {
    if (this.openValue === true && this.hasMenuItemTarget) {
      this.menuItemTargets[0].focus();
    }
  }

  nextItem(event) {
    event.preventDefault();
    this.menuItemTargets[this.nextIndex].focus();
  }

  prevItem(event) {
    event.preventDefault();
    this.menuItemTargets[this.prevIndex].focus();
  }

  get currentItemIndex() {
    return this.menuItemTargets.indexOf(document.activeElement);
  }

  get nextIndex() {
    return Math.min(this.currentItemIndex + 1, this.menuItemTargets.length - 1);
  }

  get prevIndex() {
    return Math.max(this.currentItemIndex - 1, 0);
  }

  beforeCache() {
    this.openValue = false;
    this.menuTarget.classList.add("hidden");
  }
}