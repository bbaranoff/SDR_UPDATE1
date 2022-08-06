#!/usr/bin/env python

from twilio.rest import Client

account_sid = 'TWILIO_ACCOUNT_SID'

auth_token = 'TWILIO_AUTH_TOKEN'

client = Client(account_sid, auth_token)

message = client.messages.create(body='Message', from_='+15017122661', to='+15558675310')

print(message.sid)
