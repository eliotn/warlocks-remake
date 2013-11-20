json.array!(@information_pages) do |information_page|
  json.extract! information_page, 
  json.url information_page_url(information_page, format: :json)
end