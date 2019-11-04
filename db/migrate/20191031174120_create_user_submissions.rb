class CreateUserSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_submissions do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :link
      t.string :location
      t.references :Activity, foreign_key: true

      t.timestamps
    end
  end
end
