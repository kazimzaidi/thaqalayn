class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string  :title,    :null => false
      t.integer :user_id,  :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
