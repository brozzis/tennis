class CreateMatches < ActiveRecord::Migration
  has_many      :games
  has_one       :court
  has_many      :players

  def change
    create_table :matches do |t|
      t.date        :data
      t.p1          :int
      t.p2          :int
      t.timestamps
    end
  end
end
