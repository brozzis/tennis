class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :nome

      t.timestamps
    end
  end
end
