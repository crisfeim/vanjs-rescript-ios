// styleify.js
import van from "vanjs-core";

function styleify(el) {
  if (el._isStyled) {
    return el;
  }

  el._isStyled = true;
  el.color = (v) => {
    el.style.color = v;
    return el;
  };

  return el;
}

export const styledTags = new Proxy({}, {
  get(_, tag) {
    return (...args) => {
      const el = van.tags[tag](...args);
      const styled = styleify(el);
      return styled;
    };
  }
});
