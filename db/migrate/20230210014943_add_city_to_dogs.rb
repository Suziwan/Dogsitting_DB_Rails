class AddCityToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :city_id, :integer
  end
end
