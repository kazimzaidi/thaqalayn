class CreateVerseTranslations < ActiveRecord::Migration
  def self.up
    create_table :verse_translations do |t|
      t.integer :verse_id,       :null => false
      t.integer :translation_id, :null => false
      t.text :text,       :null => false

      t.timestamps
    end
    execute 'ALTER TABLE verse_translations ENGINE = MyISAM'
  end

  def self.down
    drop_table :verse_translations
  end
end
