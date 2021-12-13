# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :winning_score
      t.integer :losing_score
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
