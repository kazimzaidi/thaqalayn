class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.string :author,   :null => false
      t.string :language, :null => false
      t.string :fullname, :null => false

      t.timestamps
    end
    execute 'ALTER TABLE translations ENGINE = MyISAM'
  end

  def self.down
    drop_table :translations
  end
end
