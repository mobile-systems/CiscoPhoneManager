json.extract! tech_user, :id, :name, :login, :password_digest, :created_at, :updated_at
json.url tech_user_url(tech_user, format: :json)
