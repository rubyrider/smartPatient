class CreateReviewAbilities < ActiveRecord::Migration
  def change
    create_table :review_abilities do |t|
      t.string :doctor_id
      t.string :user_id
      t.boolean :reviewed, default: false
      t.datetime :expire_at, default: 15.days.from_now
      t.timestamps
    end
    add_index :review_abilities, :doctor_id
    add_index :review_abilities, :user_id
  end
end
