ActiveAdmin.register Request do
  permit_params :user_id, :starting_point, :end_point, :order_description
  filter :status, as: :select

  index do
    column :id
    column :user
    column :driver
    column :status
    column :starting_point
    column :end_point
    column :order_description
    column :price
    column :paid
    column :created_at
    actions
  end

  form do |f|
    inputs 'Agregar request' do
      input :user
      input :starting_point
      input :end_point
      input :order_description
    end
    actions
  end 
end

