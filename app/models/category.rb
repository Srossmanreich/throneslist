class Category < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true

  has_many :articles

end
