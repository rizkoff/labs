class Factor < ActiveRecord::Base
  belongs_to :speciman
  has_many :fvalues
end
