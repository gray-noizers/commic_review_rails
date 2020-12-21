class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :review_title, null: false
      t.string :commic_title, null: false
      t.text :text, null: false
      t.integer :recomend, null: false
      t.integer :evaluation, null: false
      t.timestamps
    end
  end
end
