class CreateDimensions < ActiveRecord::Migration[7.1]
  def change
    create_table :dimensions do |t|
      t.string :name
      t.string :unit

      t.timestamps
    end
  end
end
