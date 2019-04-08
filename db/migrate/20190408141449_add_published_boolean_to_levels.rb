class AddPublishedBooleanToLevels < ActiveRecord::Migration[5.2]
  def change
    add_column :levels, :published, :boolean, :default => false
  end
end
