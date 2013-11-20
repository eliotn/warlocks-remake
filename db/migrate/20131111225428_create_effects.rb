class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.belongs_to :caster
      t.belongs_to :target
      t.belongs_to :spell
      t.integer :remaining_duration

      t.timestamps
    end
  end
end
