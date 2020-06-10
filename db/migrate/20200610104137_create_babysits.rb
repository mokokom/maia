class CreateBabysits < ActiveRecord::Migration[6.0]
  def change
    create_table :babysits do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.references :kid, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
