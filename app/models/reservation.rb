class Reservation < ActiveRecord::Base
  belongs_to :guest, class_name: 'User'
  belongs_to :listing
  has_many :reviews

  def checkin
    Date.parse(self[:checkin])
  end

  def checkout
    Date.parse(self[:checkout])
  end

end
