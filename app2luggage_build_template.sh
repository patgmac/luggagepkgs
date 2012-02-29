#!/bin/sh


## app2luggage_build_template.sh ##
# Patrick Gallagher <patrick@macadmincorner.com>

# Bash script to create a Luggage pkg and makefile with app2luggage
# I felt this was easier than looking up the app2luggage command everytime I needed it. 


# Enter app name with no spaces
appname=VLC

# Application name as it appears in your /Applications folder. Include .app.
app=VLC.app

# Change to your reverse domain, ie. com.companyname
reverse_domain=edu.emory

# Location where you want to store your pkg and makefile
dirname=~/src/luggagepkgs/VLC

# script action. Shouldn't need to edit this
sudo app2luggage.rb --application /Applications/${app} --directory-name ${dirname} --package-id ${appname} --reverse-domain ${reverse_domain} --make-pkg --make-dmg

exit 0
