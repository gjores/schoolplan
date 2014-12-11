class Teacher < ActiveRecord::Base
 scope :finder, lambda { |q| where("name like :q", q: "%#{q}%") }
  def as_json(options)
    { id: id, text: name }
  end
end
