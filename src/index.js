import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('Hello World Express BUENAAAAAAAAAAAAASSSSSSSS')
})

app.listen(3000)

