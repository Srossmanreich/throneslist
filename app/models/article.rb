class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :email, :presence => true

  belongs_to :categories

  before_create :short

  private
  def randomizer
      (0...8).map { (65 + rand(26)).chr }.join.downcase
  end

  def short
    self.random_string = "#{randomizer}"
  end

end
