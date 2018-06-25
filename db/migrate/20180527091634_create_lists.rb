class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.text :description
      t.date :deadline

      t.timestamps
    end
  end
end
