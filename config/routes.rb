resources :projects do
    resources :wiki, :only => [:copy], :as => 'wiki_page' do
      member do
        get 'copy'
        post 'copy'
      end
    end
end

match 'projects/:id/copy_wiki', :to => 'projects#copy_wiki', :via => [:get, :post]
