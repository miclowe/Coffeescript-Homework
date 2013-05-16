walkRight = ->

  width = document.width - img.width
  return if parseInt(img.style.left, 10) >= width || pace < 0
  img.style.left = parseInt(img.style.left, 10) + pace + 'px'

img = document.getElementById("kittykat")
pace = 2
img.style.position = 'absolute'
img.style.left = '0px'

startBtn = document.getElementById('start')
startBtn.onclick = ->
  setInterval(walkRight, 50)

fastBtn = document.getElementById('faster')
fastBtn.onclick = ->
  pace += 5

slowBtn = document.getElementById('slower')
slowBtn.onclick = ->
  pace -= 5

stopBtn = document.getElementById('stop')
stopBtn.onclick = ->
  pace = 0
