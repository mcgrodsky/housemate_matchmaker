class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :user


    def self.search(search)
      puts "*" * 50
      if search
        puts "a" * 50
        where("lower(name) LIKE ?", "%#{search.downcase}%")
      else
        all
      end
    end

end
