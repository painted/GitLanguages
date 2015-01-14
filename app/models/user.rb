class User < ActiveRecord::Base

	validates :username, uniqueness: true

# def repo_list
# 	Faraday.get 'https://api.github.com/users/#{@user.name}/repos?client_id=efd16285425704ecad8f&client_secret=9f694c01b5c1af700a8f3ecd6e25e5a8fc6024a6'
# end
# <% JSON.parse(repo_list.body).each do |repo|  %>
# 	<%= repo["language"] %><br>
# 	<% commits = Faraday.get "https://api.github.com/repos/painted/#{repo['name']}/commits?client_id=efd16285425704ecad8f&client_secret=9f694c01b5c1af700a8f3ecd6e25e5a8fc6024a6" %>
# 	<% JSON.parse(commits.body).each do |commit|  %>
# 		<%= commit["commit"]["author"]['date'][11..12] %><br>
# 	<% end %>
# <% end %>

	
end
