class AddColumnsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :title, :string
    add_column :events, :badge, :string
  end
end
