class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.references :vitamin, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
    add_index :relationships, [:vitamin_id, :food_id], unique: true
  end
end
