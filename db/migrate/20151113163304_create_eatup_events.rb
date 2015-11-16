class CreateEatupEvents < ActiveRecord::Migration
  def change
    create_table :eatup_events do |t|
      t.string :name
      t.string :chef
      t.string :date
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
