class ChangeColumnTelephoneFromIntegerToString < ActiveRecord::Migration
  def change
  	 remove_column :students, :year , :integer
  	 remove_column :students, :cel , :integer
  	 remove_column :students, :number , :integer
  	 remove_column :students, :cel_tutor , :integer
  	 remove_column :students, :emergency_phone , :integer 

  	 add_column :students, :year , :string
  	 add_column :students, :cel , :string
  	 add_column :students, :number , :string
  	 add_column :students, :cel_tutor , :string
  	 add_column :students, :emergency_phone , :string

  end
end
