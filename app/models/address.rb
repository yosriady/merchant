class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders

  def to_s
    line1
  end

end
