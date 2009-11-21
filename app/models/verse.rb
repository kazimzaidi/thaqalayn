# == Schema Information
#
# Table name: verses
#
#  id         :integer(4)      not null, primary key
#  chapter_id :integer(4)
#  ayah_index :integer(4)
#  text       :text
#

class Verse < ActiveRecord::Base

  validates_presence_of :chapter_id, :ayah_index, :text
  # belongs_to :chapter
  has_many :verse_translations
  
  named_scope :randomly, :order => 'rand()', :limit => 1
  
  def translation_by(author)
    verse_translations.find(:first, :conditions => [ "author = ?", author ], :joins => :translation)
  end

  def self.random
    randomly.first
  end

  def self.opening
    first
  end
  # Verse[5,55], Verse[33,33]
  def self.[](chapter_id, ayah_index)
    find(:first, :conditions => { :chapter_id => chapter_id, :ayah_index => ayah_index })
  end
end
