class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user_id
      t.string :doctor_id
      t.string :point
      t.integer :review_ability_id
      t.boolean :can_edit

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :doctor_id
    add_index :reviews, :point
  end
end
