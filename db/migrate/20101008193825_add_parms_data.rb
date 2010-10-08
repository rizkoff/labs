# coding: utf-8
class AddParmsData < ActiveRecord::Migration
  def self.up
    execute "INSERT INTO parms(title,val) VALUES('abc.ru', 'абвгдеёжзийклмнопрстуфхцчшщъыьэюяabcdefghijklmnopqrstuvwxyz')"
    execute "INSERT INTO parms(title,val) VALUES('ABC.ru', 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯABCDEFGHIJKLMNOPQRSTUVWXYZ')"
  end

  def self.down
  end
end
