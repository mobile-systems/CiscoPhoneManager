json.extract! phone_number, :id, :phone, :area_code_id, :created_at, :updated_at
json.url phone_number_url(phone_number, format: :json)
