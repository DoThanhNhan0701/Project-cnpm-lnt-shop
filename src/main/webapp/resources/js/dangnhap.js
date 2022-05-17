const letter = 'Welcome !'

var index = 0

setInterval(() => {
  title.textContent += letter[index]
  index++
  if (index == letter.length + 1) {
    index = 0
    title.textContent = ''
  }
}, 500)