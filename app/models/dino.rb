class Dino < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :specie, presence: true
  validates :description, presence: true
  validates :place, presence: true
  validates :characteristic, presence: true

end
