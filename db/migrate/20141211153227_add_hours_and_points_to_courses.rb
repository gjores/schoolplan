class AddHoursAndPointsToCourses < ActiveRecord::Migration
  def change
  	add_column(:courses, :teaching_hours, :integer)
  	add_column(:courses, :teaching_points, :integer)
  end
end
