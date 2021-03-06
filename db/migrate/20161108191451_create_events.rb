class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_at
      t.string :location
      t.integer :user_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
