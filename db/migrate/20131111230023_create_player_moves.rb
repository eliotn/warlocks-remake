class CreatePlayerMoves < ActiveRecord::Migration
  def change
    create_table :player_moves do |t|
      t.belongs_to :player
      t.belongs_to :player_lh_move
      t.belongs_to :player_rh_move
      t.boolean :fire_banked_spell
      t.boolean :previously_casted_lightning_bolt
      t.belongs_to :player_dictate_hand
      t.boolean :move_done

      t.timestamps
    end
  end
end
