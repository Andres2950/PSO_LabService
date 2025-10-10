import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('Hello World Express Actualizado')
})

app.listen(3000)

