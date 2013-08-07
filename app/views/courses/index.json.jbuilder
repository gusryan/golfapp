json.array!(@courses) do |course|
  json.extract! course, :name, :par, :location, :tees, :slope, :rating
  json.url course_url(course, format: :json)
end
