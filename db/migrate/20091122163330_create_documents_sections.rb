class CreateDocumentsSections < ActiveRecord::Migration
  def self.up
    create_table :documents_sections, :id => false do |t|
      t.integer :document_id, :null => false
      t.integer :section_id,  :null => false
      t.integer :position,    :null => false
    end
  end

  def self.down
    drop_table :documents_sections
  end
end
