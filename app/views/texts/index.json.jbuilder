json.array!(@texts) do |text|
  json.extract! text, :id, :title, :content
  json.url text_url(text, format: :json)
end
