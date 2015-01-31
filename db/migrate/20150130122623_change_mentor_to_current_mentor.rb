class ChangeMentorToCurrentMentor < ActiveRecord::Migration
  def change
  	rename_column :students, :mentor, :current_mentor
  end
end
