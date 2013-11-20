class Spell < ActiveRecord::Base
  has_many :sequences
end
