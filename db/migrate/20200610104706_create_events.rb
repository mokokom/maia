class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :tag
      t.text :content
      t.datetime :begin_event
      t.datetime :end_event
      t.references :babysit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
