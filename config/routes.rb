Rails.application.routes.draw do

  root to: 'home#index'
  
  get "/profil", to: 'home#profil'
  get "/galeri", to: 'home#galeri'
  get "/kontak", to: 'home#kontak'
  get "/info-psb", to: 'home#psb'
  get "/kalender-akademik", to: 'home#kalender'
  get "/kenaikan-kelas", to: 'home#kenaikan'
  get "/kelulusan", to: 'home#kelulusan'
  get "/kmi", to: 'home#kmi'
  get "/mts", to: 'home#mts'
  get "/takhasus", to: 'home#takhasus'
  get "/ma", to: 'home#ma'
  get "/aktivitas", to: 'home#aktivitas'
  get "/fasilitas", to: 'home#fasilitas'
  get "/prestasi", to: 'home#prestasi'

  get "/admin", to: 'admin#login'
  post "/admin", to: 'admin#signin'
  get "/admin/index", to: 'admin#index'
  get "/admin/guru", to: 'admin#guru'
  post "/admin/guru", to: 'guru#gurubaru'
  delete "/admin/guru.:id", to: 'guru#hapusguru'
  get "/admin/santri", to: 'admin#santri'
  post "/admin/santri", to: 'santri#santribaru'
  delete "/admin/santri.:id", to: 'santri#hapussantri'
  get "/admin/pengasuhan", to: 'admin#pengasuhan'
  post "/admin/pengasuhan", to: 'pengasuhan#pengasuhanbaru'
  delete "/admin/pengasuhan.:id", to: 'pengasuhan#hapuspengasuhan'
  get "/admin/pengaturan", to: 'admin#pengaturan'
  delete "/admin/logout", to: 'admin#logout'

  get "/santri", to: 'santri#login'
  post "/santri", to: 'santri#signin'
  get "/santri/raport", to: 'santri#raport'
  delete "/santri/logout", to: 'santri#logout'
  get "/santri/index", to: 'santri#index'
  get "/santri/profil", to: 'santri#profil'
  post "/santri/profil", to: 'santri#update'

  get "/guru", to: 'guru#login'
  post "/guru", to: 'guru#signin'  
  get "/guru/index", to: 'guru#index'
  get "guru/edit", to: 'guru#edit'
  get "/guru/penilaian", to: 'guru#penilaian'
  post "/guru/penilaian", to: 'guru#nilaibaru'
  get "/guru/profil", to: 'guru#profil'
  post "/guru/profil", to: 'guru#update'
  delete "/guru/logout", to: 'guru#logout'


  get "/pengasuhan", to: 'pengasuhan#login'
  post "/pengasuhan", to: 'pengasuhan#signin'  
  get "/pengasuhan/index", to: 'pengasuhan#index'
  delete "/pengasuhan/logout", to: 'pengasuhan#logout'
  get "/pengasuhan/profil", to: 'pengasuhan#profil'
  post "/pengasuhan/profil", to: 'pengasuhan#update'
  get "/pengasuhan/mail", to: 'pengasuhan#mail'
  post "/pengasuhan/mail", to: 'pengasuhan#sendd'
  get "/pengasuhan/penilaian2", to: 'pengasuhan#penilaian2'
   

  resources :forums, only: [:index, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
