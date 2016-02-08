window.BackboneRaffler =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneRaffler.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  BackboneRaffler.initialize()
