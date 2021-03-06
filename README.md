# iMsgBridge

iMsgBridge is an iMessage Bridge Server needed for iMsgQuickReply.

Configuration
=======

Set up your Messages app on your OS X.

Edit the config.yml file with your password and contacts.

Your contacts must match the address/phone on your Messages app (OS X).

Usage
=======

1. If you don't have bundler, install it with ```gem install bundler```
2. Then, install the libraries needed for the server with ```bundle install```
3. Finally, you can start the server with ```ruby -rubygems imsgbridge.rb -o 0.0.0.0```

Once you've done that, the server is ready to use. That's it.

You can write down:
- the IP address of your computer *or*,
- the IP address of your internet connection (if you opened the port on your router to your computer),
- *and*, the password you put in the config file.

You will need to specify those values in the iMsgQuickReply configuration.

Notes
=======

This is not for everyone and is available just for experimental purposes. Also, please note that the data communication between the app and your server will not be encrypted by default. AppleScript by https://github.com/clhynfield/imessage-sh.
