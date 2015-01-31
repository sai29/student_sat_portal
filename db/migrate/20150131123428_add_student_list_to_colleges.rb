class AddStudentListToColleges < ActiveRecord::Migration
  def change
  	add_column :colleges, :student_list, :integer, array:true
  end
end
