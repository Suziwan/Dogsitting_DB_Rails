class CreateDogsitters < ActiveRecord::Migration[7.0]
  def change
    create_table :dogsitters do |t|
      t.string :sitter_name
      t.timestamps
    end
  end
end
