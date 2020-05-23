class Clinic < ApplicationRecord
  has_many :appointments
  has_many :citizens, through: :appointments

  validates :addresss, presence: true
  validates :capacity, numercality: { only_integer: true }
end
