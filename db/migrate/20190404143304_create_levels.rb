class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :level_data
      t.integer :plays
      t.integer :user_id

      t.timestamps
    end
  end
end
