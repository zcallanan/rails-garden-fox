import { Controller } from 'stimulus'

export default class extends Controller {
  toggle() {
    if (window.scrollY > this.triggerY) {
      this.element.classList.add(this.className);
    } else {
      this.element.classList.remove(this.className);
    }
  }

  get className() {
    return this.data.has('className')
      ? this.data.get('className')
      : null
  }

  get triggerY() {
    return this.data.has('triggerY')
      ? this.data.get('triggerY')
      : null
  }
}
