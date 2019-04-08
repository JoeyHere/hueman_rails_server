class AddCompletesToLevels < ActiveRecord::Migration[5.2]
  def change
    add_column :levels, :completes, :integer
  end
end
