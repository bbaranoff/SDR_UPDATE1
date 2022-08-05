import plivo

client = plivo.RestClient('<auth_id>','<auth_token>')
message_created = client.messages.create(
    src='<sender_id>',
    dst='<destination_number>',
    text='Hello, world!'
)
