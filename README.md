# eLibrary project

[Project details](https://trello.com/b/St0gyrD1)


### How to work with this repository?

1 - On your local computer, navigate to a location where you wish to work with code:

	$ cd ~/code

2 - Clone eLibrary locally
	
	$ git clone git@github.com:OSSProjects/eLibrary.git
	
3 - After it is done, switch to `development` branch

	$ git checkout -b development
	
4 - Make sure you have the latest changes on `development` branch

	$ git pull origin development

5 - Create a personal branch out of `development` to work on your new feature

	$ git checkout -b new_feature
	
6 - Make changes and commit code to `new_feature` branch

	$ git add app/views/visitors/index.html.erb
	
	$ git commit -m "Modified layout for listing visitors"
	
7 - (Optional) push your personal branch and changes on it to `github`

	$ git push -u origin new_feature
	
8 - Merge changes on your personal branch onto `development`

	$ git checkout development
	
	$ git merge --no-ff new_feature
	
	$ git push -u origin development