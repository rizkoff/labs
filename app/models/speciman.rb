class Speciman < ActiveRecord::Base
  def self.abc
    Prm.find_by_title('abc.ru').pval
  end

  def self.abccap
    Prm.find_by_title('ABC.ru').pval
  end

  def self.upcase_ru(s)
    (s.blank?)? '' : s.tr(abc, abccap)
  end

  has_many :shipments, :dependent => :restrict
  has_many :factors, :dependent => :restrict
  has_many :fvalues, :through => [:shipments, :factors]

  before_validation :upcase_title

  # default_scope :order => 'priord DESC, title_upcased ASC'

  def self.search(search)
    where("title_upcased LIKE '%#{upcase_ru(search)}%'")
  end

  private

    def upcase_title
      self.title_upcased = upcase_ru(title)
      # self.title_upcased = (title.blank?)? nil : upcase_ru(title)
    end

end
