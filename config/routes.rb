Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/today_journal_entry', to: 'journal_entries#today_journal_entry'
  post '/journal_entry', to: 'journal_entries#create'
  patch '/journal_entry/:id', to: 'journal_entries#edit'
  delete '/journal_entry/:id', to: 'journal_entries#destroy'
  get '/get_journal_dates/:id', to: 'journal_entries#get_journal_dates'

  get '/feeling', to: 'feelings#show'
  post '/feeling', to: 'feelings#create'

  get '/goals', to: 'goals#index'
  post '/goal', to: 'goals#create'
  delete '/goal/:id', to: 'goals#destroy'

  get '/wins', to: 'wins#index'
  post '/win', to: 'wins#create'
  delete '/win/:id', to: 'wins#destroy'

end
