function darkMode() {
  var isDarkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;
  var darkModeActive = document.querySelector('#dark-mode-button').dataset.darkModeActive;

  if (isDarkMode !== darkModeActive) {
    document.body.classList.toggle('dark-mode');
    document.querySelector('#dark-mode-button').dataset.darkModeActive = !darkModeActive;
  }
}
