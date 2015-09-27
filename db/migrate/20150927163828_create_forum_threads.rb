class CreateForumThreads < ActiveRecord::Migration
  def change
    create_table :forum_threads do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
