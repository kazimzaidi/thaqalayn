class CreateVerses < ActiveRecord::Migration
  def self.up
    create_table :verses do |t|
      t.integer :chapter_id
      t.integer :ayah_index
      t.text    :text
    end

    execute 'ALTER TABLE verses ENGINE = MyISAM'
    ActiveRecord::Base.connection.execute(load_data_infile("#{RAILS_ROOT}/lib/quran-simple-enhanced.txt"))
  end

  def self.down
    drop_table :verses
  end


  private
  def self.load_data_infile(path)
    <<-EOF
         LOAD DATA LOCAL INFILE "#{path}"
         INTO TABLE verses
         FIELDS TERMINATED BY '|'
         (chapter_id, ayah_index, text);
       EOF
  end
end
