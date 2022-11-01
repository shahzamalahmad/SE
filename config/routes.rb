Rails.application.routes.draw do
  
  get "articles/about"
  get "articles/services"
  get "articles/gallery", to: "articles#gallery"
  get "articles/faq"
  get "articles/new", to: "articles#new"
  get "articles/contact"


  resources "articles"
  root "articles#index"
end
