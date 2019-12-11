class CreateUserSub < ActiveRecord::Migration[5.2]
  def change
    create_table :user_submissions do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
