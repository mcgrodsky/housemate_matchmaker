class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :neighborhood
  has_one :listing, through: :neighborhood
  has_many :friendships
  has_many :friends, through: :friendships
end


#  my table would be called friendship and it would include:
# t.integer: user1
# t.integer: user2

 # so in my user model i could include
#  has_many :favorites
#
#
#
#   # has_many :favorites <this will be a join table between two users. Can name it something like 'favoriter' and 'favoritee'
#
#
#
# # has_many :favorites <this will be a join table between two users. Can name it something like 'favoriter' and 'favoritee'
# # my model would be called 'friendship'
# end


# +  # you can name the column anything, like `favoriter` and `favoritee`
# +  # or `user1` and `user2`
# +  # re: the above URL, `membership` is the name of the model
# +  # Let's find a time to pair on this next week
