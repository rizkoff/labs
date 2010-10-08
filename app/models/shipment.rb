class Shipment < ActiveRecord::Base
  belongs_to :speciman
  has_many :fvalues, :dependent => :destroy

  after_create :populate_values

  private

  def populate_values
#    s=Speciman.find 3
#    s.factors.where("j_n is not null").count
#    s.factors.where("j_n is not null").map(&:id).count
    # logger.info ":::: #{speciman.factors.where("j_n IS NOT NULL")}"
    speciman.factors.where("j_n IS NOT NULL").each do |f|
      fvalues.create!(:factor_id => f.id, :fvalue => f.j_def)
    end
    logger.info ":::: created!!"
  end
end
