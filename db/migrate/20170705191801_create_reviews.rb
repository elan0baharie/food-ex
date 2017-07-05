class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :author, :string
      t.column :content, :decimal
      t.column :rating, :integer

      t.timestamps
    end
  end
end
