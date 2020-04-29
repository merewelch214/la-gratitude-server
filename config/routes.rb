Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/today_journal_entry', to: 'journal_entries#today_journal_entry'
  post '/journal_entry', to: 'journal_entries#create'
end
