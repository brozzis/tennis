class Player < ActiveRecord::Base
  has_many: games
  has_many: players
  has_one: court
end
