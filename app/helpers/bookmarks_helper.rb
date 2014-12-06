module BookmarksHelper
  # Nokogiri helpers
  def get_title(page)
    page.css('title').inner_text.truncate(200)
  end

  def get_keywords(page)
    if page.xpath('//meta[@name="keywords"]/@content')
      keywords_meta = page.xpath('//meta[@name="keywords"]/@content')
      kw = keywords_meta.map(&:value).map(&:downcase).join(', ')
      kw.truncate(200)
    end
  end

  def get_desc(page)
    if page.xpath('//meta[@name="description"]/@content').map(&:value).first
      page.xpath('//meta[@name="description"]/@content').map(&:value).first.truncate(200)
    end
  end
end
