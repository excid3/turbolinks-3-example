Rails.application.routes.draw do
  resources :forum_threads do
    resources :forum_posts
  end

  root to: "forum_threads#index"
end
