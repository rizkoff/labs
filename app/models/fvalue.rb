class Fvalue < ActiveRecord::Base
  belongs_to :factor
  belongs_to :shipment
end
