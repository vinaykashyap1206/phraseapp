class CreatePhrases < ActiveRecord::Migration[5.0]
  def change
    create_table :phrases do |t|
      t.string :word
      t.integer :state, default: 0
      t.timestamps
    end
  end
end
