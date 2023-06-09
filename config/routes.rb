Rails.application.routes.draw do
 # ユーザー用
# URL /users/sign_in ...
devise_for :users, skip: [:passwords],  controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

# トップページとアバウトページのルート設定
  get '/', to: 'public/homes#top'
  get '/about', to: 'public/homes#about'



end
