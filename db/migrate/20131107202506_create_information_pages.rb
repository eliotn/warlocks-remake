class CreateInformationPages < ActiveRecord::Migration
  def change
    create_table :information_pages do |t|

      t.timestamps
    end
  end
end
