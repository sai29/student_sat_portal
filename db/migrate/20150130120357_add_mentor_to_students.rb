class AddMentorToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :mentor, :string
  end
end
