class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.string :code
      t.integer :size

      t.timestamps
    end
    add_index :ships, [:name], :unique=>true
  end
end
