class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :user

    def self.search(search)
      if search
        where("lower(name) LIKE ?", "%#{search.downcase}%")
      else
        all
      end
    end

end
