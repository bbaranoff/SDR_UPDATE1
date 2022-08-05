import plivo
client = plivo.RestClient(
  auth_id='your_auth_id',
  auth_token='your_auth_token'
)
fake_phone_number = '+919898989898'
target_phone_number = '+15765757560'
answer_url = 'https://example.com/assets/steps.xml'
response = client.calls.create(
  from=my_phone_number,
  to=her_phone_number,
  answer_url=answer_url,
  answer_method='POST'
)
