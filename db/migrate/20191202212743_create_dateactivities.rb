class CreateDateactivities < ActiveRecord::Migration[5.2]
  def change
    create_table :dateactivities do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :link
      t.string :location
      t.references :generator, foreign_key: true

      t.timestamps
    end
  end
end
