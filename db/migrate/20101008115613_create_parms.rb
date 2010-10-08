class CreateParms < ActiveRecord::Migration
  def self.up
    create_table :parms do |t|
      t.string :title
      t.string :val

      t.timestamps
    end
  end

  def self.down
    drop_table :parms
  end
end
