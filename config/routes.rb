Rails.application.routes.draw do
  mount ActionCable.server => "/cable"

  scope "(:locale)", locale: /en|ru/ do
    root 'main_page#index'

    get "/main",   to: 'main_page#refresh'
    get "/about",  to: 'about#index'

    namespace :web do
      get "/gui", to: "main_page#gui"
      get "/ruby", to: "ruby#web"
      get "/java", to: "java#web"
      get "/js",   to: "js#web"
    end

    namespace :back do
      get "/back", to: "main_page#back"
      get "/ruby", to: "ruby#web"
      get "/java", to: "java#web"
      get "/js",   to: "js#web"
    end

    namespace :mobile do
      get "/mobile", to: "main_page#mobile"
      get "/ruby", to: "ruby#web"
      get "/java", to: "java#web"
      get "/js",   to: "js#web"
    end
  end
end
