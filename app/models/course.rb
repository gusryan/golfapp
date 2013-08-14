class Course < ActiveRecord::Base
  has_many :holes
  has_many :matches

  validates :name, :par, :location, :presence => true
  validates :name, :uniqueness => true
end
