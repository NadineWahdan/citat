class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :Body, :string
      add_reference :post, :User, index: true
      t.timestamps null: false	
    end
  end
end
