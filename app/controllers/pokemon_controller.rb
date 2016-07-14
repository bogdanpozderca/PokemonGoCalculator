class PokemonController < ApplicationController
	before_filter :authenticate_user!
	require 'pp'

	def calculator
		@userPokemon = UserPokemon.select("*").joins(:pokemon_candies_to_evolve).where("user_pokemons.user_id = ?", current_user.id).order("user_pokemons.id")

		if @userPokemon.blank?
			PokemonCandiesToEvolve.all.each do |pokemon|
				UserPokemon.create(:user_id => current_user.id, :pokemon_candies_to_evolve_id => pokemon.id, :candies => 0, :count => 0)
			end
		end

	end
end
