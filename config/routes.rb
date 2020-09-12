Rails.application.routes.draw do
  get 'main/index'
  root 'main#index'

  get 'main/add_book'
  get 'main/added_book'

  get 'main/delete_book'
  get 'main/deleted_book'

  get 'main/edit_book'
  get 'main/editing_book'
  get 'main/edited_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
