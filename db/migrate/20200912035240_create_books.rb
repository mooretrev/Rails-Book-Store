class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.numeric :price
      t.string :publish_date

      t.timestamps
    end
  end
end
