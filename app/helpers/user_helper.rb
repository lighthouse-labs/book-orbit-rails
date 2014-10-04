module UserHelper

  def convert_to_valid_username(username)
    username.gsub(/[^\w-]/,'').downcase
  end

  def convert_to_valid_collection_name(collection_name)
    collection_name.gsub(/[^\w-]/,'').downcase
  end

  def prepend_http(url)
    if url =~ /^(http(s?):)?\/\//
      url
    else
      url.insert(0, "http://")
    end
  end

  # Nokogiri helpers
  def get_title(page)
    page.css('title').inner_text.truncate(200)
  end

  def get_keywords(page)
    keywords_meta = page.xpath('//meta[@name="keywords"]/@content')
    kw = keywords_meta.map(&:value).map(&:downcase).join(', ')
    kw.truncate(200)
  end

  def get_desc(page)
    if page.xpath('//meta[@name="description"]/@content').map(&:value).first
      page.xpath('//meta[@name="description"]/@content').map(&:value).first.truncate(200)
    end
  end

end
