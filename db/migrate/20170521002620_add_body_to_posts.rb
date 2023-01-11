class AddBodyToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :body, :text, :author_id
  end
end
