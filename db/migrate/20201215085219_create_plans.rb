class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :country_id, null: false
      t.string :place,       null: false
      t.text :text,          null: true
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
