class ChangeLevelDefaults < ActiveRecord::Migration[5.2]
  def change
    change_column :levels, :completes, :integer, :default => 0 
    change_column :levels, :plays, :integer, :default => 0 
  end
end
