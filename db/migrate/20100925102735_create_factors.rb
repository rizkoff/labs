class CreateFactors < ActiveRecord::Migration
  def self.up
    create_table :factors do |t|
      t.integer :speciman_id
      t.integer :j_n
      t.string :j_title
      t.string :j_def
      t.integer :pasp_n
      t.string :pasp_title
      t.string :pasp_reqmt
      t.string :pasp_def

      t.timestamps
    end
  end

  def self.down
    drop_table :factors
  end
end
