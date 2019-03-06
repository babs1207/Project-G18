json.extract! request, :id, :user_id, :driver_id, :payment_id, :store_id, :statement_id, :starting_point, :gps_starting, :end_point, :gps_end_point, :order_description, :paid, :cancelled, :price, :created_at, :updated_at
json.url request_url(request, format: :json)
