json.extract! course, :id, :name, :department, :number, :credits, :created_at, :updated_at
json.url course_url(course, format: :json)
