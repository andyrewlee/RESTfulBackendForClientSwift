class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :story

      t.timestamps
    end
  end
end
