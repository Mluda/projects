class CreateUnvotes < ActiveRecord::Migration
  def change
    create_table :unvotes do |t|
      t.integer :topic_id

      t.timestamps
    end
  end
end
