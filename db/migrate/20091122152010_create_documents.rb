class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string  :title
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
