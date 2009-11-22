module MetaMapping
  class Sura
    include XML::Mapping

    numeric_node :index, '@index'
    numeric_node :ayas,  '@ayas'
    numeric_node :start, '@start'
    
    text_node    :name,  '@name'
    text_node    :tname, '@tname'
    text_node    :ename, '@ename'
    text_node    :rev_type, '@type'
    numeric_node :order, '@order'
    numeric_node :rukus, '@rukus'
  end
end
