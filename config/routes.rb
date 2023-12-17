Rails.application.routes.draw do

    # 404/500 pages
    get 'errors/not_found'
    get 'errors/internal_server_error'
    match "/404", to: "errors#not_found", via: :all
    match "/500", to: "errors#internal_server_error", via: :all
  
  #devise_scope :admins do
  #  # Redirests signing out users back to sign-in
  #  get "admins", to: "devise/sessions#new"
  #end

  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
  root "pages#home"

  #post 'uploader/image', to: 'uploader#image' #add upload image to posts 
  #get 'blog', to: 'posts#index', as: :blog
  #resources :posts
  
  #resources :discover_flights
  #resources :messages
  #resources :enrollments
  #resources :book_downloads
  #resources :checkouts
  #resources :quiz_results

  # Enrollment form
  #get 'enroll-at-simplifly', to: 'enrollments#new', as: :enroll
  #get 'enrollment-confirmation', to: 'enrollments#confirmation', as: :enroll_confirmation

  # Contact form
  #get 'contact', to: 'messages#new', as: :contact
  #get 'contact-confirmation', to: 'messages#confirmation', as: :contact_confirmation
  #get 'visit-simplifly', to: 'messages#location', as: :location
  #get 'instruct-at-simplifly', to: 'messages#cfi', as: :cfi

  # Book Download
  #get 'book-download-confirmation', to: 'book_downloads#confirmation', as: :book_download_confirmation

  # Discovery flight form
  #get 'discovery-flight', to: 'discover_flights#new', as: :discovery_flight
  #get 'discovery-flight-confirmation', to: 'discover_flights#confirmation', as: :discovery_confirmation

  # Check out form
  #get 'rental-checkout', to: 'checkouts#new', as: :rental_checkout
  #get 'rental-checkout-confirmation', to: 'checkouts#confirmation', as: :checkout_confirmation

  # Quiz form
  #get 'quiz', to: 'quiz_results#new', as: :quiz
  #get 'quiz-confirmation', to: 'quiz_results#confirmation', as: :quiz_confirmation

  # Static Pages
  
end
