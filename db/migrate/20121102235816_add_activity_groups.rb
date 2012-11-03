class AddActivityGroups < ActiveRecord::Migration
  def change
    create_table :activity_groups do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
