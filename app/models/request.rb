class Request < ApplicationRecord
  belongs_to :user
  belongs_to :driver
  belongs_to :payment
  belongs_to :store
  belongs_to :statement
end
