slack-message:
  slack.post_message:
    - channel: '#general'
    - from_name: SuperAdmin
    - message: 'This state for minion "{{ grains['id']}}" was executed successfully.'
    - api_key: xoxb-163263228658-iDKQ9YrhUpvRIY5LCO4Irvof
