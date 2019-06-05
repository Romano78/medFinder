const line = document.querySelector('.background-line')
const lineFilled = document.querySelector('.progress-bar-filled')
const lineProgress = document.querySelector('.progress-bar-width')

console.log(lineProgress.dataset.progress)

lineFilled.style = `width: ${lineProgress.dataset.progress}`
