class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.intager   :id
      t.text      :caption
      t.intager   :user_id
      t.timestamps
    end
  end
end