class HomeController < ApplicationController
  
  def index
  end
  
  def search_for_language
    
  end
  
  def search_for_language_post
    @text = LanguageFinder.new({ user: params.fetch(:user) }).find
    render 'search_for_language'
  end
end
