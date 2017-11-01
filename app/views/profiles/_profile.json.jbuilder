json.extract! profile, :id, :name, :surname, :phone, :mobile, :street_number, :addressline_1, :suburb, :state, :postcode, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
