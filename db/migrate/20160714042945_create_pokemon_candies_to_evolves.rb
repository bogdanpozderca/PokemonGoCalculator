class CreatePokemonCandiesToEvolves < ActiveRecord::Migration
  def change
    create_table :pokemon_candies_to_evolves do |t|
      t.string "pokemon"
      t.integer "requires"
    end
  end
end
