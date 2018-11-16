import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Because... Tom Cruise Loves You!❤️"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
