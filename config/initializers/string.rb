# coding: utf-8
class String
  @@abc    ||= Parm.find_by_title('abc.ru').val
  @@abccap ||= Parm.find_by_title('ABC.ru').val

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
