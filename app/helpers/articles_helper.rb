module ArticlesHelper
  def tag_links(tags)
    tags.each{|tag| link_to tag.strip, tag_path(tag.strip) }
  end
  
end
