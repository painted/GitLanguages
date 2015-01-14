require 'rails_helper'

describe 'users' do 

	it 'starts with no users' do 
		visit '/users'
		expect(page).to have_content 'No users yet'
	end

	context 'with a user' do

		before do 
			User.create(username: 'painted')
		end

		it 'can show the user info' do 
			visit '/users'
			expect(page).to have_content 'painted'
		end

		it 'will not accept the same username more than once' do
			visit '/users/new'
			fill_in 'Username', with: 'painted'
			click_button 'Submit'
			expect(page).to have_content 'painted'
			expect(current_path).to eq users_path
			expect(User.count).to eq 1
		end
	end 

	it 'can add a user with a form' do 
		visit '/users/new'
		fill_in 'Username', with: 'painted'
		click_button 'Submit'
		expect(page).to have_content 'painted'
		expect(current_path).to eq users_path
	end 

end