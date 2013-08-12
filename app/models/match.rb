class Match < ActiveRecord::Base
  belongs_to :course
  belongs_to :golfer
  has_many :holes
end
