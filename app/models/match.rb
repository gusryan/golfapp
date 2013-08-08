class Match < ActiveRecord::Base
  belongs_to :course
  belongs_to :golfer
  belongs_to :golfer1
  belongs_to :golfer2
end
