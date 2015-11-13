App.module "Calendar", (Calendar) ->

  class Calendar.Model extends Backbone.Model
    urlRoot: "/api/calendar"
    defaults:
      date: new Date()
