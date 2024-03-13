class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.references :post, null: false, foreign_key: true, type: :uuid
      t.string :user_name
      t.text :content

      t.timestamps
    end
  end
end
