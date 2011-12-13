class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string    :nome, :limit => 32, :null => false
      t.string    :tel
    end
  end
end
