class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :activityID
      t.string :name
      t.string :type
      t.string :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
