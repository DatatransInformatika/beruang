import {AbstractPresenter} from "@beruang/mvp/abstract-presenter.js";

export default class Home3Presenter extends AbstractPresenter {
    constructor(view) {
      super(view);
    }

    start(singleWidgetContainer, initial, data) {
      let el = this.view.asyncWidget(null);
      singleWidgetContainer.setWidget(el);
    }

    mayLeave() {
      return true;
    }
}
