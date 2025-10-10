import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('Hello World Express fiaaaaaaaaaaaaaaaaaaa')
})

app.listen(3000)

