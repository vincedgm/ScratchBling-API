class CreateBackscratchers < ActiveRecord::Migration[6.1]
  def change
    create_table :backscratchers do |t|
      t.string :name
      t.text :description
      t.string :size, array:true, default: []
      t.integer :price

      t.timestamps
    end
  end
end
