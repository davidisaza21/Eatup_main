class CreateEatupUsers < ActiveRecord::Migration
  def change
    create_table :eatup_users do |t|
      t.string :email
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
