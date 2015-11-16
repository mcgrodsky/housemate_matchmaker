class Neighborhood < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  belongs_to :user
end
