class UserController < ApplicationController
  def index
  end

  def show
    if params[:collection]
      @collection = params[:collection]
    end

    if @user = User.find_by(username: params[:username])
    else
      create
    end
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user.password.nil?
      render :add_password
    end
  end

  def add_password

  end

  def search

  end

  def create
    @user = User.new(username: params[:username])

    if @user.save
      redirect_to "/#{@user.username}"
    else
      # go somewhere else
    end
  end

  def edit
    add_bookmark if params[:add_bookmark]
    edit_collections if params[:edit_collections]
  end

  def add_bookmark
    @user = User.find_by(username: params[:username])

    # Append the http:// if it does not exist in the submitted url
    url = prepend_http(params[:url])

    begin

    if Bookmark.find_by(url: url).nil?
      begin
      page = Nokogiri::HTML(open(url, :allow_redirections => :safe))
      # if nokogiri parses in an empty title, set title = url
      title = get_title(page)
      title = url if title.empty?

      bookmark = Bookmark.create(url: url, title: title, keywords: get_keywords(page), desc: get_desc(page))

      # Avoid using open-uri if the url returns a HTTP error
      # Instead, use the url as the title
      rescue OpenURI::HTTPError => he
        puts "Got HTTP error: #{he}"
        bookmark = Bookmark.create(url: url, title: url)
      end
    else
      bookmark = Bookmark.find_by(url: url)
    end
    # If user already bookmarked it...
    if BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first
      @existing_bookmark = bookmark
      # I want it to stop here and show the error. i.e. Don't proceed to add it to the user's bookmarks.
    else
      # Add to the user's list of bookmarks
      @user.bookmarks << bookmark

      # Select the user's bookmark
      users_bookmark = BookmarksUser.where(user_id: @user.id).where(bookmark_id: bookmark.id).first

      # Array of collections from the "add" form
      submitted_collections = params[:collection].uniq

      # Go through each collection name
      submitted_collections.each do |collection|

        # Check if a collection was passed. If it's empty, then assign it to "uncategorized"
        if collection == ""
          collection = Collection.find(1)
        else
          # If a collection was passed, check if it already exists
          if collection_exists?(collection)
            collection = Collection.find_by(name: collection)
          else
            # Otherwise create the new collection
            collection = Collection.create(name: collection)
          end
        end
        users_bookmark.collections << collection
      end
    end
    rescue SocketError, URI::InvalidURIError => se
      puts "Got socket error: #{se}"
      @url_is_invalid = true
    end #end begin block

    render :show
  end

  def edit_collections
  end

  protected

  def prepend_http(url)
    if url =~ /^(http(s?):)?\/\//
      url
    else
      url.insert(0, "http://")
    end
  end

  # Nokogiri helprs
  def get_title(page)
    page.css('title').inner_text
  end

  def get_keywords(page)
    keywords_meta = page.xpath('//meta[@name="keywords"]/@content')
    kw = keywords_meta.map(&:value).map(&:downcase).join(', ')
    # quick fix that abandon keywords that end with ","
    return nil if kw.last == ','
  end

  def get_desc(page)
    page.xpath('//meta[@name="description"]/@content').map(&:value).first
  end

end
