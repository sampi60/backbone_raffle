class BackboneRaffler.Collections.Entries extends Backbone.Collection

  model: BackboneRaffler.Models.Entry

  url: '/api/entries'

  drawWinner: ->
    winner = @shuffle()[0]
    if winner
      winner.set(winner: true)
      winner.save()
      winner.trigger('highlight')
