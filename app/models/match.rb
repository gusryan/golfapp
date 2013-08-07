class Match < ActiveRecord::Base
  has_many :golfers
  belongs_to :course
end
