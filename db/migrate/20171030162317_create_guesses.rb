class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.references :card, foreign_key: true
      t.references :round, foreign_key: true
      t.integer :count, default: 0
      t.boolean :correctness, default: false

      t.timestamps
    end
  end
end
