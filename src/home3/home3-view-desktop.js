import {AbstractView} from "@beruang/mvp/abstract-view.js";

export default class Home3View extends AbstractView {
  constructor() {
    super();
  }

  asyncWidget(fReady) {
    if(this._el) {
      if(fReady) {
        fReady();
      }
    } else {
      this._el = window.BeruangFactory.create("polar-row", (pr)=>{
        let div = document.createElement("div");
        div.innerHTML = "desktop-abc3";
        div.classList.add("div2");
        pr.appendChild(div);
        div = document.createElement("div");
        div.innerHTML = "desktop-def3";
        div.classList.add("div1");
        pr.appendChild(div);
        if(fReady) {
          fReady();
        }
      });
      this._el.fitParent = true;
      this._el.noWrap = true;
    }
    return this._el;
  }
}
