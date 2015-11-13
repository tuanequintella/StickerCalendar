App.module "Stickers", (Stickers) ->

  class Stickers.Model extends Backbone.Model
    urlRoot: "/api/stickers"
    defaults:
      habit_name: ''

  class Stickers.Collection extends Backbone.Collection
    model: Stickers.Model
    url: "/api/stickers"
