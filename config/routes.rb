MostPopularLanguageAtGitHub::Application.routes.draw do
  root 'home#index'
  match '/search', to: 'home#search_for_language', via: 'get'
  match '/search', to: 'home#search_for_language_post', via: 'post'
end
