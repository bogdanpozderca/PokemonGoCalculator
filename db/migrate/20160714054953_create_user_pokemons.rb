class CreateUserPokemons < ActiveRecord::Migration
  def change
    create_table :user_pokemons do |t|
		t.belongs_to :users, index: true
		t.belongs_to :pokemon_candies_to_evolves, index: true
		t.integer "candies"
		t.integer "count"
    end
  end
end
