class Strategy < ActiveRecord::Base

has_many :efforts
has_many :strategies
belongs_to :user

end
