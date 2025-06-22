class CreateTechnicals < ActiveRecord::Migration[7.1]
  def change
    create_table :technicals do |t|
      t.string :title
      t.string :value

      t.timestamps
    end
  end
end
