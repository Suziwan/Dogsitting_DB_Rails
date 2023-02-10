class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :dog_name 
      t.string :dog_breed
      t.timestamps
    end
  end
end
