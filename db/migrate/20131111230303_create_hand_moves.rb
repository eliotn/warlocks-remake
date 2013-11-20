class CreateHandMoves < ActiveRecord::Migration
  def change
    create_table :hand_moves do |t|
      t.string :player_hand
      t.string :player_hand_gesture
      t.belongs_to :player_hand_spell
      t.belongs_to :player_hand_target
      t.boolean :make_permanent
      t.boolean :bank_spell

      t.timestamps
    end
  end
end
