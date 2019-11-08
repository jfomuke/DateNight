class ChangeTypeToCategory < ActiveRecord::Migration[5.2]
  change_table :activities do |t|
    t.rename :type, :category
  end
  
  change_table :user_submissions do |t|
    t.rename :type, :category
  end
  
  change_table :activities do |t|
    t.remove :activityID
  end
  
end
