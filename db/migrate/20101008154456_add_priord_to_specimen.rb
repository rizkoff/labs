class AddPriordToSpecimen < ActiveRecord::Migration
  def self.up
    add_column :specimen, :priord, :integer, :default => 0
  end

  def self.down
    remove_column :specimen, :priord
  end
end
