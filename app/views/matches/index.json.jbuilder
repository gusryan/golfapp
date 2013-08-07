json.array!(@matches) do |match|
  json.extract! match, :name, :golfer1, :golfer2, :course, :score, :winner
  json.url match_url(match, format: :json)
end
