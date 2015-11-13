#= require ../../stickers/views/sticker_view

App.module "Calendar", (Calendar) ->

  class Calendar.DayView extends Marionette.CompositeView
    template: 'calendar/templates/day'
    childViewContainer: '.stickers'
    childView: Sticker.StickersItemView