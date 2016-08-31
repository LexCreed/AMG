ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column                           :email
    column "Ultima sesión",          :current_sign_in_at
    column "Sesiones iniciadas",     :sign_in_count
    column "Creado",                 :created_at
    actions 
  end

  filter :email
  filter :current_sign_in_at, label: 'Ultima sesión'
  filter :sign_in_count, label: 'Sesiones iniciadas'
  filter :created_at, label: 'Creado'

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
