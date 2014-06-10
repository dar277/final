class Goal < ActiveRecord::Base

has_many :strategies
belongs_to :user

end
