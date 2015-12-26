json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :member_id, :wk_day, :arrival, :departure
  json.url attendance_url(attendance, format: :json)
end
