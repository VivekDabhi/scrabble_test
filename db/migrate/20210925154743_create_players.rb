# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :highest_score, default: 0
      t.integer :average_score, default: 0
      t.string :phone_number

      t.timestamps
    end
  end
end
