class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :desc
      t.belongs_to :publish_status, index: true
      t.belongs_to :author, index: true
      t.belongs_to :editor, index: true
      t.datetime "edit_started_at"

      t.timestamps
    end
  end
end
