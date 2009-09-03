class CreateMemos < ActiveRecord::Migration
  def self.up
    create_table :memos do |t|
      t.string :access_key
      t.text :body

      t.timestamps
    end
    add_index :memos, :access_key, :unique => true
  end

  def self.down
    remove_index :memos, :access_key
    drop_table :memos
  end
end
