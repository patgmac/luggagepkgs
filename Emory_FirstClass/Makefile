include /usr/local/share/luggage/luggage.make

TITLE=Emory_FirstClass
REVERSE_DOMAIN=edu.emory
PAYLOAD=\
		pack-FirstClass\
		unbz2-applications-FirstClass.app

pack-FirstClass: l_Library
	@sudo ${CP} -R ./FirstClass ${WORK_D}/Library
	@sudo chmod -R 755 ${WORD_D}/Library/FirstClass
	@sudo chown -R root:admin ${WORD_D}/Library/FirstClass
