class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :check_in, presence: true, timeliness: { type: :date }
  validates :check_out, presence: true, timeliness: { type: :date }
end
