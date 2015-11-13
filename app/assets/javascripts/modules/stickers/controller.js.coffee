App.module "Stickers", (Stickers) ->

  class Stickers.Controller extends Marionette.Controller
    index: ->
      @collection = new Stickers.Collection
      @view = new Stickers.StickersView collection: @collection
      @collection.fetch()
      App.content.show(@view)

    new: ->
      @model = new Stickers.Model
      @view = new Stickers.EditStickerView model: @model
      App.content.show(@view)

    show: (id) ->
      @model = new Stickers.Model(id: id)
      @model.fetch().done =>
        @view = new Stickers.StickerView model: @model
        App.content.show(@view)

    edit: (id) ->
      @model = new Stickers.Model(id: id)
      @model.fetch().done =>
        @view = new Stickers.EditStickerView model: @model
        App.content.show(@view)

  class Stickers.Router extends Marionette.AppRouter
    appRoutes:
      "stickers": "index"
      "stickers/new": "new"
      "stickers/:id": "show"
      "stickers/:id/edit": "edit"

  Stickers.addInitializer ->
    new Stickers.Router controller: new Stickers.Controller
