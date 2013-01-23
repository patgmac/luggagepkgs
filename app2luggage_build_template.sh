#!/bin/sh
## app2luggage_build_template.sh ##

# Bash script to create a Luggage pkg and makefile with app2luggage
# I felt this was easier than looking up the app2luggage command everytime I needed it.

# Enter app name with no spaces
appname="Firefox"

# Application name as it appears in your /Applications folder. Include .app.
app="${appname}.app"

# Change to your reverse domain, ie. com.companyname
reverse_domain=edu.emory

# Location where you want to store your pkg and makefile
dirname=~/src/luggagepkgs/"${appname}"

# Fix permissions
chown -R root:admin "/Applications/${app}"
chmod -R 775 "/Applications/${app}"

# script action. Shouldn't need to edit this
sudo app2luggage.rb --application "/Applications/${app}" --directory-name "${dirname}" --package-id "${appname}" --reverse-domain ${reverse_domain} --make-pkg --make-dmg

exit 0
