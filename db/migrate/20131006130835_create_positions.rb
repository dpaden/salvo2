class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references :game, index: true
      t.references :user, index: true
      t.references :ship, index: true
      t.string :location
      t.timestamps
    end
    add_index :positions, [:game_id, :user_id, :ship_id], :unique=>true
  end
end
