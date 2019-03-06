class Request < ApplicationRecord
  belongs_to :user
  belongs_to :driver, optional: true
  belongs_to :payment, optional:true
  belongs_to :store, optional:true
  belongs_to :statement, optional:true
  has_many_attached :documents
end
