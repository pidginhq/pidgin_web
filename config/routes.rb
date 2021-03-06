Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#index"
  get '/faq' => "home#faq"
  get '/about' => "home#about"
  get '/contact' => "waitlists#new"
  get '/contact_us' => "home#contact"
  get '/contact_pidgin' => "home#contact_pidgin"
  resource :waitlist
  get '/waitlist/new' => "home#index"
  get '/waitlist/show' => "waitlists#show"
end
