class Payment < ApplicationRecord
  has_many :requests
end
