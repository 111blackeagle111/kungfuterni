const button = document.querySelector('.nav-btn');
const nav = document.querySelector('#main-nav');

if (button && nav) {
  const header = button.closest('header');
  const closeMenu = () => {
    button.setAttribute('aria-expanded', 'false');
    button.setAttribute('aria-label', 'Apri menu');
    nav.classList.remove('is-open');
  };

  header.classList.add('nav-ready');
  button.hidden = false;
  button.addEventListener('click', () => {
    const open = button.getAttribute('aria-expanded') !== 'true';
    button.setAttribute('aria-expanded', String(open));
    button.setAttribute('aria-label', open ? 'Chiudi menu' : 'Apri menu');
    nav.classList.toggle('is-open', open);
  });
  nav.addEventListener('click', event => {
    if (event.target.closest('a')) closeMenu();
  });
  header.addEventListener('keydown', event => {
    if (event.key === 'Escape' && button.getAttribute('aria-expanded') === 'true') {
      closeMenu();
      button.focus();
    }
  });
  window.matchMedia('(max-width: 1280px)').addEventListener('change', closeMenu);
}
