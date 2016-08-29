class AddNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :last_name, :string
    add_column :students, :mother_last_name, :string
    add_column :students, :year, :int
    add_column :students, :cel, :int
    add_column :students, :Street, :string
    add_column :students, :number, :int
    add_column :students, :colony, :string
    add_column :students, :delegation, :string
    add_column :students, :tutor, :string
    add_column :students, :cel_tutor, :int
    add_column :students, :emergency_phone, :int
    add_column :students, :instrument, :string


  end
end
