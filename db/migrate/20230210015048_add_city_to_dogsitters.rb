class AddCityToDogsitters < ActiveRecord::Migration[7.0]
  def change
    add_column :dogsitters, :city_id, :integer
  end
end
