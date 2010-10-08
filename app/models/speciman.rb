class Speciman < ActiveRecord::Base
  has_many :shipments, :dependent => :restrict
  has_many :factors, :dependent => :restrict
  has_many :fvalues, :through => [:shipments, :factors]

  before_validation :upcase_title

  default_scope :order => 'priord DESC, title_upcased ASC'

  def self.search(search)
    where("title_upcased LIKE '%#{search.try(:upcase_ru)}%'")
  end

  private

    def upcase_title
      self.title_upcased = (title.blank?)? nil : title.upcase_ru
    end

end
