class CreateJoinTableActivitiesGenerator < ActiveRecord::Migration[5.2]
  def change
    create_table :activities_generators, id: false do |t|
      t.belongs_to :activity
      t.belongs_to :generator
    end
  end
end
