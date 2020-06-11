class AddColumnsToKids < ActiveRecord::Migration[6.0]
  def change
    add_column :kids, :food_habit, :text
    add_column :kids, :sleep_habit, :text
    add_column :kids, :health_habit, :text
  end
end
