class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dino
  validates :checkin_on, presence: true
  validates :checkout_on, presence: true
  attribute :status, :string, default: 'pending'
# valiates :status, inclusion: { in: ["Pending guest request", "Pending host validation", "Confirmed", "Canceled"], allow_nil: true }

  def french_status
    case status
    when "pending"
      "En attente"
    when "validated"
      "Validé"
    when "rejected"
      "Refusé"
    end
  end
end
