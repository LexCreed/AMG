ActiveAdmin.register Student do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :last_name, :mother_last_name, :Street, :colony, :delegation, :tutor, :instrument, :year , :cel , :number, :cel_tutor , :emergency_phone , :of, :attributes, :on, :model
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
	 column :email
	 column "Nombre del Alumno", :name 
	 column "Apellido", :last_name
  	 column "Celular Alumno", :cel 
  	 column "Celular Tutor", :cel_tutor 
  	 column "Numero Emergencia", :emergency_phone 
	 column "Instrumento", :instrument

  	 actions 
  	end



    filter :email
    filter :name
    filter :last_name
    filter :mother_last_name
    filter :instrument

  collection_action :import_csv, method: :post do
    # Do some CSV importing work here...
    redirect_to collection_path, notice: "CSV imported successfully!"
  end
  
end
