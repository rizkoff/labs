# coding: utf-8
class String
  @@abc    ||= Prm.find_by_title('abc.ru').pval
  @@abccap ||= Prm.find_by_title('ABC.ru').pval

  def self.abccap
    @@abccap
  end
  def self.abc
    @@abc
  end

  def upcase_ru
    tr @@abc, @@abccap
  end

end
