class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.string :habit_name

      t.timestamps null: false
    end
  end
end
