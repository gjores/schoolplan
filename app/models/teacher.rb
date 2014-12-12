# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  signature  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Teacher < ActiveRecord::Base

 scope :finder, lambda { |q| where("name like :q", q: "%#{q}%") }
  def as_json(options)
    { id: id, text: name }
  end
end
