require 'xml/mapping'
require 'sura'
require 'quran_meta_data'

class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.integer :index
      t.string  :arabic_name
      t.integer :verse_count
      t.integer :start
      t.string  :trans_name
      t.string  :english_name
      t.string  :revealed_in
      t.integer :order
      t.integer :rukus

      t.timestamps
    end

    map = MetaMapping::QuranMetaData.load_from_file("#{RAILS_ROOT}/lib/quran-data.xml")
    map.suras.each do |sura|
      Chapter.create!(:index => sura.index, :arabic_name => sura.name, :verse_count => sura.ayas,
		      :start => sura.start, :trans_name => sura.tname, :english_name => sura.ename,
		      :revealed_in => sura.rev_type, :order => sura.order, :rukus => sura.rukus)
    end

  end

  def self.down
    drop_table :chapters
  end
end
