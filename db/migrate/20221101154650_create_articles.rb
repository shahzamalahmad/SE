class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :company
      t.text :massage

      t.timestamps
    end
  end
end
