class CreateOrderingInformations < ActiveRecord::Migration[7.1]
  def change
    create_table :ordering_informations do |t|
      t.string :cat_no
      t.text :description
      t.integer :std_pack

      t.timestamps
    end
  end
end
