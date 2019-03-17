ActiveAdmin.register User do

  permit_params :name,
                :last_name,
                :address,
                :phone,
                :email,
                :password      
  filter :name, as: :select

  index do
    column :id
    column :name
    column :last_name
    column :email
    column :address
    column :phone
    actions
  end

  form do |f|
    inputs 'Agregar usuario' do
      input :name
      input :last_name
      input :address
      input :phone
      input :email
      input :password 
    end
    actions
  end 
end
