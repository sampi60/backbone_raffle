window.BackboneRaffler =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneRaffler.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  BackboneRaffler.initialize()
