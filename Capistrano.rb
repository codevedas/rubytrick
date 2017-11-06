========================
set the git repo
========================
# !! These commands are to be executed on
#    your development machine, from where you will
#    deploy to your server.
#    Instructions might vary slightly depending on
#    your choice of operating system.
#
#    Make sure to set correct paths for application
#    Otherwise Nginx might not be able to locate it.

# Initiate the repository
git init

# Add all the files to the repository
git add .

# Commit the changes
git commit -m "first commit"

# Add your Github repository link 
# Example: git remote add origin git@github.com:[user name]/[proj. name].git
git remote add origin git@github.com:user123/my_app.git

# Create an RSA/SSH key
# Follow the on-screen instructions
ssh-keygen -t rsa

# View the contents of the key and add it to your Github
# by copy-and-pasting from the current remote session by
# visiting: https://github.com/settings/ssh
# To learn more about the process,
# visit: https://help.github.com/articles/generating-ssh-keys
cat /root/.ssh/id_rsa.pub

# Set your Github information
# Username:
# Usage: git config --global user.name "[your username]"
git config --global user.name "user123"

# Email:
# Usage: git config --global user.email "[your email]"
git config --global user.email "user123@domain.tld"

# Push the project's source code to your Github account
git push -u origin master

=============================
  capistrano
=============================
# add GEM & BUNDLE
 
  cap install

# config config/deploy.rb
# set folder git repo

# configure the config/deploy/production.rb 
# set the ip address or localhost

		# Define roles, user and IP address of deployment server
		# role :name, %{[user]@[IP adde.]}
		role :app, %w{deployer@162.243.74.190}
		role :web, %w{deployer@162.243.74.190}
		role :db,  %w{deployer@162.243.74.190}

		# Define server(s)
		server '162.243.74.190', user: 'deployer', roles: %w{web}

		# SSH Options
		# See the example commented out section in the file
		# for more options.
		set :ssh_options, {
			forward_agent: false,
			auth_methods: %w(password),
			password: 'user_deployers_password',
			user: 'deployer',
		}

# install opensshsudo apt-get install openssh-server
sudo apt-get install openssh-server

# start deploy
cap production deploy --trace



#ref: 
#How To Automate Ruby On Rails Application Deployments Using Capistrano _ DigitalOcean
#How To Deploy a Rails App with Unicorn and Nginx on Ubuntu 14
#How to Push to GitHub - Rails Girls
