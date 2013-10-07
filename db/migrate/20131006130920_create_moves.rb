class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.references :game, index: true
      t.references :user, index: true
      t.string :move
      t.integer :result
      t.timestamps
    end
    add_index :moves, [:game_id, :user_id, :move], :unique=>true
  end
end
