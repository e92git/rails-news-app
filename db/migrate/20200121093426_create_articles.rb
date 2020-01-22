class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :desc
      t.integer :publish
      t.belongs_to :author, index: true, class_name: "User"
      t.belongs_to :editor, index: true, class_name: "User"
      t.datetime "edit_started_at"

      t.timestamps
    end

    add_foreign_key :articles, :users,  column: :author_id
    add_foreign_key :articles, :users,  column: :editor_id

  end
end
