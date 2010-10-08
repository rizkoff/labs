class CreateFvalues < ActiveRecord::Migration
  def self.up
    create_table :fvalues do |t|
      t.integer :factor_id
      t.integer :shipment_id
      t.string :fvalue

      t.timestamps
    end
  end

  def self.down
    drop_table :fvalues
  end
end
