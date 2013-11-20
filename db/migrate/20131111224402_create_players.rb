class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.integer :games_won
      t.date :last_activity

      t.timestamps
    end
  end
end
