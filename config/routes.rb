Rails.application.routes.draw do
  root to: 'posts#index' #新規投稿ページへの遷移は行わない
  post 'posts', to: 'posts#create'
end
