class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :home_user_id
      t.integer :away_user_id
      t.integer :active_user_id
      t.references :status
      t.integer :winner
      t.integer :loser
      t.timestamps
    end
  end
end
