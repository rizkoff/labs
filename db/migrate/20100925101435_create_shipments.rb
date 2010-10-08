class CreateShipments < ActiveRecord::Migration
  def self.up
    create_table :shipments do |t|
      t.integer :speciman_id
      t.string :batch_number
      t.integer :check_number, :unique => true
      t.date :manuf_date
      t.date :release_date
      t.date :expire_date

      t.timestamps
    end
  end

  def self.down
    drop_table :shipments
  end
end
