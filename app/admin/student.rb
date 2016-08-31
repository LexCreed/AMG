ActiveAdmin.register Student do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name,  :last_name , :mother_last_name, :Street, :colony, :delegation, :tutor, :instrument, :year , :cel , :number, :cel_tutor , :emergency_phone , :of, :attributes, :on, :model

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


	index do

	 selectable_column
  
	 column                        :email
	 column "Nombre del Alumno",   :name 
	 column "Apellido",            :last_name
   column "Celular Alumno",      :cel 
   column "Celular Tutor",       :cel_tutor 
   column "Numero Emergencia",   :emergency_phone 
	 column "Instrumento",         :instrument
   
   actions 
  	end

filter :year, as: :check_boxes
    
    filter :name, label: 'Nombre'
    filter :last_name, label: 'Apellido Paterno'
    filter :mother_last_name, label: 'Apellido Materno'
    filter :email, label: 'Email'
    filter :instrument, label: 'instrumento'


end
