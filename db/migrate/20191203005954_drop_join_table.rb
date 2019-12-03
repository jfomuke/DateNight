class DropJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :activities_generators
  end
end
