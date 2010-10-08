class AddTitleUpcasedToSpecimen < ActiveRecord::Migration
  def self.up
    add_column :specimen, :title_upcased, :string
    Speciman.all.each do |s|
      s.title_upcased = s.title.upcase_ru
      s.save!
    end
  end

  def self.down
    remove_column :specimen, :title_upcased
  end
end
