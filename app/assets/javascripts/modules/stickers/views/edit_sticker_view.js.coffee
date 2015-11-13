App.module "Stickers", (Stickers) ->

  class Stickers.EditStickerView extends Marionette.ItemView
    template: 'stickers/templates/edit_sticker'

    ui:
      alert: '.alert'
      habit_name: 'input[name=habit_name]'

    events:
      'submit form': 'submit'

    modelEvents:
      error: 'modelError'
      sync: 'modelSync'

    submit: (e) ->
      e.preventDefault()
      @model.save
        habit_name: @ui.habit_name.val()

    modelError: ->
      @ui.alert.text("There was an error saving your sticker.")
      @ui.alert.removeClass('hide')

    modelSync: ->
      App.navigate "/"
