class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.belongs_to :game
      t.belongs_to :player_owner
      t.string :target_type
      t.integer :health

      t.timestamps
    end
  end
end
