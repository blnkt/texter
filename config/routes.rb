Rails.application.routes.draw do
  root to: 'messages#index'
  resources :contacts
  resources :messages, except: [:destroy, :update, :edit]
end

#       Prefix Verb   URI Pattern                  Controller#Action
#     contacts GET    /contacts(.:format)          contacts#index
#              POST   /contacts(.:format)          contacts#create
#  new_contact GET    /contacts/new(.:format)      contacts#new
# edit_contact GET    /contacts/:id/edit(.:format) contacts#edit
#      contact GET    /contacts/:id(.:format)      contacts#show
#              PATCH  /contacts/:id(.:format)      contacts#update
#              PUT    /contacts/:id(.:format)      contacts#update
#              DELETE /contacts/:id(.:format)      contacts#destroy
#     messages GET    /messages(.:format)          messages#index
#              POST   /messages(.:format)          messages#create
#  new_message GET    /messages/new(.:format)      messages#new
#      message GET    /messages/:id(.:format)      messages#show
