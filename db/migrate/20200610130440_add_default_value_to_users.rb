class AddDefaultValueToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :is_nanny, :boolean, default: false
  end
end
