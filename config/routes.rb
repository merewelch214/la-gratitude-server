Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/today_journal_entry', to: 'journal_entries#today_journal_entry'
  post '/journal_entry', to: 'journal_entries#create'
  patch '/journal_entry/:id', to: 'journal_entries#edit'
  delete '/journal_entry/:id', to: 'journal_entries#destroy'

  post '/feeling', to: 'feelings#create'
  get '/feeling', to: 'feelings#show'

end
