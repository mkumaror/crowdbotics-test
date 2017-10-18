class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.string :name
      t.boolean :active, default: false
      t.integer :priority, default: 0

      t.timestamps
    end
  end
end
