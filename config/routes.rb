TunrRails::Application.routes.draw do

  root to: "artists#index"

  resources :artists
	resources :albums
	resources :songs

end                        

# 			 root        /                           artists#index
#     artists GET    /artists(.:format)          artists#index
#             POST   /artists(.:format)          artists#create
#  new_artist GET    /artists/new(.:format)      artists#new
# edit_artist GET    /artists/:id/edit(.:format) artists#edit
#      artist GET    /artists/:id(.:format)      artists#show
#             PUT    /artists/:id(.:format)      artists#update
#             DELETE /artists/:id(.:format)      artists#destroy
#      albums GET    /albums(.:format)           albums#index
#             POST   /albums(.:format)           albums#create
#   new_album GET    /albums/new(.:format)       albums#new
#  edit_album GET    /albums/:id/edit(.:format)  albums#edit
#       album GET    /albums/:id(.:format)       albums#show
#             PUT    /albums/:id(.:format)       albums#update
#             DELETE /albums/:id(.:format)       albums#destroy
#       songs GET    /songs(.:format)            songs#index
#             POST   /songs(.:format)            songs#create
#    new_song GET    /songs/new(.:format)        songs#new
#   edit_song GET    /songs/:id/edit(.:format)   songs#edit
#        song GET    /songs/:id(.:format)        songs#show
#             PUT    /songs/:id(.:format)        songs#update
#             DELETE /songs/:id(.:format)        songs#destroy