class CreateSpecimen < ActiveRecord::Migration
  def self.up
    create_table :specimen do |t|
      t.string :title, :unique => true
      t.integer :priord, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :specimen
  end
end
