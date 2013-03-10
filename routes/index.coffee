lessOpts = require('../public/javascripts/less-options')['lessOpts']

exports.fourOhfour = (req, res) ->
    res.status(404)

    if req.accepts('html')
      res.render "404", { title: 'LESS2CSS | 404', app: '' }
    else if req.accepts('json')
      res.send { error: 'Not Found' }
    else
      res.type('txt').send '404 Not Found'

exports.index = (req, res) ->
  opts =
    title: 'LESS2CSS | LESS Live Preview'
    app: 'Less2Css'

  res.render 'less2css', opts

exports.lessOptions = (req, res) ->
  res.json lessOpts

exports.share = (req, res) ->
  id = req.params.id
  res.json {}