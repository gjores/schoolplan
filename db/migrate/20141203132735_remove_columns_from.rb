class RemoveColumnsFrom < ActiveRecord::Migration
  def change
  	remove_column(:courses, :year_one_ht)
  	remove_column(:courses, :year_one_vt)
  	remove_column(:courses, :year_two_vt)
  	remove_column(:courses, :year_two_ht)
  	remove_column(:courses, :year_three_ht)
  	remove_column(:courses, :year_three_vt)
  end
end
