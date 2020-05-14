import {Controller} from 'stimulus'

export default class extends Controller {
  static targets = ["startDate", "endDate", "days", "priceTotal"]

  connect() {
    console.log('hello from controller', this.data.get("price"), this.data.get("duration"))
  }

  calculate() {
    if (!this.endDate || !this.startDate || this.startDate >= this.endDate) {
      return false;
    }

    const difference = Math.abs(this.endDate - this.startDate)
    const days = Math.ceil(difference / (1000 * 60 * 60 * 24))

    const total = days * this.data.get("price")
    
    this.daysTarget.innerHTML = days
    this.priceTotalTarget.innerHTML = total
    
  }

  get startDate() {
    if (!this.startDateTarget.value) {
      return null;
    }

    return new Date(this.startDateTarget.value)
  } 

  get endDate() {
    if (!this.endDateTarget.value) {
      return null;
    }

    return new Date(this.endDateTarget.value)
  } 
}