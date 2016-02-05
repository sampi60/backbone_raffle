class BackboneRaffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new BackboneRaffler.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new BackboneRaffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"
