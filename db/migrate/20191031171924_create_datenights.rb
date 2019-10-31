class CreateDatenights < ActiveRecord::Migration[5.2]
  def change
    create_table :datenights do |t|
      t.integer :ID

      t.timestamps
    end
  end
end
