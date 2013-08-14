class Golfer < ActiveRecord::Base
  belongs_to :match

  validates :name, :handicap, :presence => true
  validates :name, :uniqueness => true
end
