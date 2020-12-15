class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.string :title,       null: false
      t.date :start_date,    null: false
      t.date :end_date,      null: false
      t.integer :country_id, null: false
      t.string :place,       null: false
      t.text :text,          null: false
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
