# iMsgBridge

iMsgBridge is an iMessage Bridge Server needed for iMsgQuickReply.

Configuration
=======

Edit the config.yml file with your password and contacts.

Your contacts must match the address/phone on your Messages app (OS X).

Usage
=======

```bundle install``` then
```ruby -rubygems imsgbridge.rb -o 0.0.0.0```

Once you've done that, the server is ready to use. That's it.

You can write down:
- the IP address of your computer *or*,
- the IP address of your internet connection (if you opened the port on your router to your computer),
- *and*, the password you put in the config file.

You will need to specify those values in the iMsgQuickReply configuration.

Notes
=======

This is not for everyone and is available just for experimental purposes. Also, please note that the data communication between the app and your server will not be encrypted by default.
