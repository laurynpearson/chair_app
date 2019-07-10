class CreateChairs < ActiveRecord::Migration[6.0]
  def change
    create_table :chairs do |t|
      t.string :color
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
