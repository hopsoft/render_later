import { Controller } from 'stimulus';

export default class extends Controller {
  connect() {
    setTimeout(this.run.bind(this), 50);
  }

  run() {
    let url = this.element.dataset.url;
    if (!url || url.length === 0) return;

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = (() => {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        this.element.outerHTML = xhr.responseText;
      }
    }).bind(this);
    xhr.open('GET', url);
    xhr.send();
  }
}
