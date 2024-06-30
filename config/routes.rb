Rails.application.routes.draw do

    # 404/500 pages
    get 'errors/not_found'
    get 'errors/internal_server_error'
    match "/404", to: "errors#not_found", via: :all
    match "/500", to: "errors#internal_server_error", via: :all
  
  devise_scope :admins do
  # Redirests signing out users back to sign-in
    get "admins", to: "devise/sessions#new"
  end

  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
  root "pages#home"

  # Static Pages
  get 'pilot-training-programs-and-courses', to: 'pages#pilot_programs', as: :pilot_programs
  get 'private-pilot-certificate-ppl', to: 'pages#private_pilot', as: :ppl
  # get 'private-pilot-certificate-ppl-package', to: 'pages#private_pilot_package', as: :ppl_package
  get 'instrument-rating-ifr', to: 'pages#instrument_rating', as: :ifr
  get 'commercial-pilot-certificate-cpl', to: 'pages#commercial_pilot', as: :cpl
  get 'certified-flight-instructor-cfi', to: 'pages#cfi', as: :cfi
  get 'flight-instructor-instrument-cfii', to: 'pages#cfii', as: :cfii
  get 'spin-endorsement', to: 'pages#spin_endorsement', as: :spin_endorsement
  get 'should-i-become-a-pilot', to: 'pages#why_pilot', as: :why_pilot
  get 'why-choose-blue-skies-above', to: 'pages#why_bsa', as: :why_bsa
  get 'about-us', to: 'pages#about_us', as: :about_us
  get 'privacy-policy-terms-of-service', to: 'pages#tos', as: :tos
  get 'financing', to: 'pages#financing', as: :financing
  get 'pricing', to: 'pages#pricing', as: :pricing
  get 'auburn', to: 'pages#auburn', as: :auburn

  post 'uploader/image', to: 'uploader#image' #add upload image to posts 
  get 'blog', to: 'posts#index', as: :blog
  resources :posts
  
  resources :discover_flights
  resources :checkouts
  resources :messages
  resources :enrollments
  resources :book_downloads
  #resources :quiz_results

  # Enrollment form
  get 'enroll-at-blue-skies', to: 'enrollments#new', as: :enroll
  get 'enrollment-confirmation', to: 'enrollments#confirmation', as: :enroll_confirmation

  #Contact form
  get 'contact', to: 'messages#new', as: :contact
  get 'contact-confirmation', to: 'messages#confirmation', as: :contact_confirmation
  get 'join-team', to: 'messages#cfi', as: :join_team

  # Book Download
  get 'book-download-confirmation', to: 'book_downloads#confirmation', as: :book_download_confirmation

  # Discovery flight form
  get 'discovery-flight', to: 'discover_flights#new', as: :discovery_flight
  #get 'discovery-flight-confirmation', to: 'discover_flights#confirmation', as: :discovery_confirmation

  # Check out form (USE THIS AS VISIT SHCOOL FORM)
  get 'visit-flight-school', to: 'checkouts#new', as: :visit
  get 'visit-flight-school-confirmation', to: 'checkouts#confirmation', as: :visit_confirmation

  # Quiz form
  #get 'quiz', to: 'quiz_results#new', as: :quiz
  #get 'quiz-confirmation', to: 'quiz_results#confirmation', as: :quiz_confirmation

  #previous routes
  get 'private-pilot', to: 'pages#private_pilot'
  get 'instrument-rating', to: 'pages#instrument_rating'
  get 'contact-us', to: 'messages#new'
  get 'discovery-flights', to: 'discover_flights#new'
  
  # Dynamic Location pages 
  get 'pilot-training', to: 'pages#pilot_programs'
  get '/pilot-training/:location_slug', to: 'locations#show', as: :location

end
