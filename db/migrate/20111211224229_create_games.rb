class CreateGames < ActiveRecord::Migration
  has_one   : match 

  def change
    create_table :games do |t|
      t.r1      : int
      t.r2      : int
      t.tb      : bool
      t.timestamps
    end
  end
end
