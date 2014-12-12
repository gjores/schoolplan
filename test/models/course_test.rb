# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  cours_name      :string(255)
#  cours_code      :string(255)
#  group           :string(255)
#  type            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  teacher_id      :integer
#  teaching_hours  :integer
#  teaching_points :integer
#

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
