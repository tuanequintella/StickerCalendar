App.module "Stickers", (Stickers) ->

  class Stickers.StickersItemView extends Marionette.ItemView
    template: 'stickers/templates/stickers_item'
    tagName: 'li'
    className: 'sticker'

    events:
      'click a.link': 'clickLink'
      'click a.edit': 'clickEdit'

    clickLink: (e) ->
      e.preventDefault()
      App.navigate "stickers/#{@model.id}"

    clickEdit: (e) ->
      e.preventDefault()
      App.navigate "stickers/#{@model.id}/edit"
