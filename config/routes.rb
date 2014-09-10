Rails.application.routes.draw do 
  get 'contacts/process_form'

	post 'contact', to: 'contacts#process_form'
  root to: 'visitors#new'
end