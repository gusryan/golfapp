json.array!(@golfers) do |golfer|
  json.extract! golfer, :name, :handicap
  json.url golfer_url(golfer, format: :json)
end
