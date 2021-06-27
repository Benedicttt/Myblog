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

    namespace :install do
      get "on_windows/ruby", to: "windows#win_ruby"
      get "on_linux/ruby", to: "linux#linux_ruby"
      get "on_mac/ruby", to: "mac#mac_ruby"

      get "on_windows/js", to: "windows#win_js"
      get "on_linux/js", to: "linux#linux_js"
      get "on_mac/js", to: "mac#mac_js"

      get "on_windows/java", to: "windows#win_java"
      get "on_linux/java", to: "linux#linux_java"
      get "on_mac/java", to: "mac#mac_java"
    end
  end
end
