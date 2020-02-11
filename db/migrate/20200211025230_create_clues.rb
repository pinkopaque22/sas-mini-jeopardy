class CreateClues < ActiveRecord::Migration[6.0]
  def change
    create_table :clues do |t|
      t.string :answer
      t.string :question
      t.integer :value
      t.string :airdate

      t.timestamps
    end
  end
end
