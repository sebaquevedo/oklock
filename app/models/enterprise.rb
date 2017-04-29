class Enterprise < ApplicationRecord
  belongs_to :user
  has_many :charges
  has_many :sectors
end
