class CreateDatenights < ActiveRecord::Migration[5.2]
  def change
    create_table :datenights do |t|
      t.int :ID
      t.int :activityID

      t.timestamps
    end
  end
end
