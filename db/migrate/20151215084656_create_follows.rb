class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.column :follwerId, :int
      add_reference :follows, :users, index: true
      t.timestamps null: false
    end
  end
end
