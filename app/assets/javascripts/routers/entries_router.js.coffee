class BackboneRaffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  index: ->
    view = new BackboneRaffler.Views.EntriesIndex()
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"
