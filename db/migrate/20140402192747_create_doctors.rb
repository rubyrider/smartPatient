class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :title
      t.string :experience
      t.boolean :active, default: true
      t.string :doc_code
      t.string :password_digest
      t.string :age
      t.string :tag_line

      t.timestamps
    end
  end
end
