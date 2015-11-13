#= require ./stickers_item_view

App.module "Stickers", (Stickers) ->

  class Stickers.StickersView extends Marionette.CompositeView
    template: 'stickers/templates/stickers'
    childViewContainer: '.stickers'
    childView: Stickers.StickersItemView

    events:
      'click .new': 'new'

    new: (e) ->
      e.preventDefault()
      App.navigate "stickers/new"
