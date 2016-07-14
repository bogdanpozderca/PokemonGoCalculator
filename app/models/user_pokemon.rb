class UserPokemon < ActiveRecord::Base
	belongs_to :user
	belongs_to :pokemon_candies_to_evolve
end
