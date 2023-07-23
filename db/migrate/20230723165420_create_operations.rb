class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.decimal :amound
      t.datetime :odate
      t.string :category_type
      t.string :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
