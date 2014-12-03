json.array!(@courses) do |course|
  json.extract! course, :id, :cours_name, :cours_code, :type
  json.url course_url(course, format: :json)
end
