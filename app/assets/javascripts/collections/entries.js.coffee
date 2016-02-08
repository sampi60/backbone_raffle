class BackboneRaffler.Collections.Entries extends Backbone.Collection

  model: BackboneRaffler.Models.Entry

  url: '/api/entries'

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
