class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :user_pokemons, :pokemon_candies_to_evolves_id, :pokemon_candies_to_evolve_id
  end
end