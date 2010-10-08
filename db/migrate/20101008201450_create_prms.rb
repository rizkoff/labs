# coding: utf-8
class CreatePrms < ActiveRecord::Migration
  def self.up
    create_table :prms do |t|
      t.string :title
      t.string :pval

      t.timestamps
    end
    execute "INSERT INTO prms(title,pval) VALUES('abc.ru', 'абвгдеёжзийклмнопрстуфхцчшщъыьэюяabcdefghijklmnopqrstuvwxyz')"
    execute "INSERT INTO prms(title,pval) VALUES('ABC.ru', 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯABCDEFGHIJKLMNOPQRSTUVWXYZ')"

  end

  def self.down
    drop_table :prms
  end
end
