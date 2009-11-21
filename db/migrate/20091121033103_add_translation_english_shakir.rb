class AddTranslationEnglishShakir < ActiveRecord::Migration
  def self.up
    trans = Translation.create!(:author => "Shakir", :fullname => "Mohammad Habib Shakir", :language => "en")
    ActiveRecord::Base.connection.execute(load_data_infile("#{RAILS_ROOT}/lib/translation-english-shakir.txt", trans))
  end

  def self.down
  end
  
  private
  def self.load_data_infile(path, trans)
    <<-EOF
         LOAD DATA LOCAL INFILE "#{path}"
         INTO TABLE verse_translations
         FIELDS TERMINATED BY '|'
         (verse_id, text)
	 SET translation_id = '#{trans.id}',
	   created_at = '#{Time.current.to_s(:db)}',
	   updated_at = '#{Time.current.to_s(:db)}';
       EOF
  end
end
