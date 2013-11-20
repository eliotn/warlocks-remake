class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :player1_move
      t.belongs_to :player2_move
      t.string :player1_move_string
      t.string :player2_move_string
      t.string :player1_true_move_string
      t.string :player2_true_move_string
      t.date :creation
      t.date :last_activity
      t.integer :current_turn_number
      t.string :description
      t.string :game_state

      t.timestamps
    end
  end
end
