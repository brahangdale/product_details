class CreateConnections < ActiveRecord::Migration[7.1]
  def change
    create_table :connections do |t|
      t.text :title
      t.string :unit

      t.timestamps
    end
  end
end
