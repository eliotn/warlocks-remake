class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :description
      t.boolean :is_beneficial
      t.boolean :is_baneful
      t.boolean :is_targeted
      t.integer :priority
      t.boolean :is_enchantment
      t.integer :duration
      t.integer :damage

      t.timestamps
    end
  end
end
