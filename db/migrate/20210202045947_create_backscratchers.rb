class CreateBackscratchers < ActiveRecord::Migration[6.1]
  def change
    create_table :backscratchers do |t|
      t.string :name
      t.text :description
      t.string :price
      t.string :size, array:true, default: []

      t.timestamps
    end
  end
end
