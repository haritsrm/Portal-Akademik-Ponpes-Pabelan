require 'rails_helper'

RSpec.describe AdminController, type: :controller do
	describe 'Session Schema Admin' do
		context 'GET #login' do
			it 'when admin get login url' do
				get :login
				expect(response).to be_success
			end
		end
		context 'POST #signin' do
			it 'when admin login with valid data' do
				params = {username: 'admin',
						  password: 'admin'}
				Admin.create(params)
				post :signin, params: params
				expect(response).to redirect_to(admin_index_path)
			end
			it 'when admin login with invalid data' do
				post :signin
				expect(response).to redirect_to(admin_path)
				expect(flash[:danger]).to match(/Username atau Password salah!*/)
			end
		end
		context 'GET #index' do
			it 'rendering index admin' do
				params = {username: 'admin',
						  password: 'admin'}
				Admin.create(params)
				post :signin, params: params
				get :index
				expect(response).to be_success
			end
		end
		context 'DELETE #logout' do
			it 'when admin want to logout' do
				delete :logout
				expect(response).to redirect_to(admin_path)
			end
		end
	end
	describe 'getting user and web information' do
		context 'GET #guru' do
			it 'show all data of guru' do
				params = {username: 'admin',
						  password: 'admin'}
				Admin.create(params)
				post :signin, params: params
				get :guru
				expect(response).to be_success
			end
		end
		context 'GET #santri' do
			it 'show all data of santri' do
				params = {username: 'admin',
						  password: 'admin'}
				Admin.create(params)
				post :signin, params: params
				get :santri
				expect(response).to be_success
			end
		end

		context 'GET #pengasuhan' do
			it 'show all data of pengasuhan' do
				params = {username: 'admin',
						  password: 'admin'}
				Admin.create(params)
				post :signin, params: params
				get :pengasuhan
				expect(response).to be_success
			end
		end
	end
	describe 'changing tahun ajaran for all system' do
		context 'POST #setpengaturan' do
			it 'edit value of tahunajaran' do
				Tahunajaran.create(tahun: '2016/2017')
				params = {tahun: '2017/2018'}
				post :setpengaturan, params: params
				expect(response).to redirect_to(admin_tahun_ajaran_path)
			end
		end
		context 'GET #pengaturan' do
			it 'showing value of tahunajaran' do
				params = {username: 'admin',
						  password: 'admin'}
				Tahunajaran.create(tahun: '2017/2018')
				Admin.create(params)
				post :signin, params: params
				thn = Tahunajaran.last
				get :pengaturan, params: {tahunajaran: thn.tahun}
				expect(response).to be_success
			end
		end
	end
	describe 'changing kontak for all system' do
		context 'POST #setkontak' do
			it 'edit value of kontak' do
				Kontak.create(email: "supportpabelan@gmail.com",
									tlp: "(0293) 782040",
									pengasuhan: "0877-7007-1144 / 0822-2514-5745",
									kmi: "(0293)  782061",
									ma: "(0293) 3285188",
									sikpb: "(0293) 3301645")
				params = {email: "sample@gmail.com",
							tlp: "(0293) 782040",
							pengasuhan: "0877-7007-1144 / 0822-2514-5745",
							kmi: "(0293)  782061",
							ma: "(0293) 3285188",
							sikpb: "(0293) 3301645"}
				post :setkontak, params: params
				expect(response).to redirect_to(admin_kontak_path)
			end
		end
		context 'GET #kontak' do
			it 'showing value of kontak' do
				params = {username: 'admin',
						  password: 'admin'}
				Tahunajaran.create(tahun: '2017/2018')
				Admin.create(params)
				post :signin, params: params
				thn = Kontak.last
				get :kontak, params: {email: "supportpabelan@gmail.com",
										tlp: "(0293) 782040",
										pengasuhan: "0877-7007-1144 / 0822-2514-5745",
										kmi: "(0293)  782061",
										ma: "(0293) 3285188",
										sikpb: "(0293) 3301645"}
				expect(response).to be_success
			end
		end
	end
end
