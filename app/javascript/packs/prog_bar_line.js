const line = document.querySelector('.background-line')
const lineFilled = document.querySelector('.progress-bar-filled')
const lineProgress = document.querySelector('.progress-bar-width')


lineFilled.style = `width: ${lineProgress.dataset.progress}`
