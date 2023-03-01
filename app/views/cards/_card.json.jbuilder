json.extract! card, :id, :desc, :value, :altvalue, :ispic, :play_id, :created_at, :updated_at
json.url card_url(card, format: :json)
