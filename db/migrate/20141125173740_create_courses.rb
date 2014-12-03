class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :cours_name
      t.string :cours_code
      t.string :group
      t.string :type
      t.integer :year_one_ht
      t.integer :year_one_vt
      t.integer :year_two_ht
      t.integer :year_two_vt
      t.integer :year_three_ht
      t.integer :year_three_vt

      t.timestamps
    end
  end
end
