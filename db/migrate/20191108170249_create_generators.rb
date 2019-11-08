class CreateGenerators < ActiveRecord::Migration[5.2]
  def change
    create_table :generators do |t|
      t.integer :acitivityID
      t.integer :foodID

      t.timestamps
    end
  end
end
