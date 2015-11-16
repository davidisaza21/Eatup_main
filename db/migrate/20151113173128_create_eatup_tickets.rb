class CreateEatupTickets < ActiveRecord::Migration
  def change
    create_table :eatup_tickets do |t|
      t.string :ticket_number
      t.string :eatup_user_id
      t.string :eatup_event_id

      t.timestamps null: false
    end
  end
end
