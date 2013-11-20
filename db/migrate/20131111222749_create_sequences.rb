class CreateSequences < ActiveRecord::Migration
  def change
    create_table :sequences do |t|
      t.belongs_to :spell
      t.string :sequence
      t.string :reverse_sequence
      t.timestamps
    end
  end
end
