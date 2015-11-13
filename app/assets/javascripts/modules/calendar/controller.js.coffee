App.module "Calendar", (Calendar) ->

  class Calendar.Controller extends Marionette.Controller
    month: (id) ->
      @collection = new Stickers.Collection
      @view = new Calendar.MonthView collection: @collection
      @collection.fetch()
      App.content.show(@view)

    week: (id) ->
      @collection = new Stickers.Collection
      @view = new Calendar.WeekView collection: @collection
      @collection.fetch()
      App.content.show(@view)

    day: (id) ->
      @collection = new Stickers.Collection
      @view = new Calendar.DayView collection: @collection
      @collection.fetch()
      App.content.show(@view)

  class Calendar.Router extends Marionette.AppRouter
    appRoutes:
      "": "day"
      "week": "week"
      "month": "month"

  Calendar.addInitializer ->
    new Calendar.Router controller: new Calendar.Controller
