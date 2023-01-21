class Goals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :goal
      t.integer :section_id
      t.timestamps
    end
  end
end
