class AddColumnToBabysits < ActiveRecord::Migration[6.0]
  def change
    add_column :babysits, :validated, :boolean, default: false
  end
end
