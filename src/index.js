import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('Hello World Express Perron')
})

app.listen(3000)

