class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.integer :user_id
      t.text :sub_name

      t.timestamps
    end
  end
end
