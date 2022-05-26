class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dino
  validates :checkin_on, presence: true
  validates :checkout_on, presence: true
# valiates :status, inclusion: { in: ["Pending guest request", "Pending host validation", "Confirmed", "Canceled"], allow_nil: true }
  
end
