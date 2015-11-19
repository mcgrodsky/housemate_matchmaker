class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :user
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
