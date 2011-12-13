class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.string      :luogo, :limit => 32, :null => false
      t.string      :superficie, :limit => 32
      t.timestamps
    end
  end
end
