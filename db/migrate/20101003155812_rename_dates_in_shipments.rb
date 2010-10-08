class RenameDatesInShipments < ActiveRecord::Migration
  def self.up
    rename_column :shipments, :expire_date, :expiredt
    rename_column :shipments, :release_date, :releasedt
    rename_column :shipments, :manuf_date, :manufdt
  end

  def self.down
    rename_column :shipments, :expiredt, :expire_date
    rename_column :shipments, :releasedt, :release_date
    rename_column :shipments, :manufdt, :manuf_date
  end
end
