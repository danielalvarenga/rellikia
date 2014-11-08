json.array!(@entries) do |entry|
  json.extract! entry, :id, :positive, :title, :description
  json.url entry_url(entry, format: :json)
end
