class CreateVitamins < ActiveRecord::Migration[6.1]
  def change
    create_table :vitamins do |t|
      t.string :name, null: false
      t.text :effect

      t.timestamps
    end
    add_index :vitamins, :name, unique: true
  end
end
