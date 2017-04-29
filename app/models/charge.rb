class Charge < ApplicationRecord
  belongs_to :enterprise
  has_many :specialties
end
