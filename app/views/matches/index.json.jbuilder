json.array!(@matches) do |match|
  json.extract! match, :name, :golfer1_name, :golfer2_name, :course_name, :score, :winner, :course_id, :golfer_id, :golfer1_id, :golfer2_id
  json.url match_url(match, format: :json)
end
