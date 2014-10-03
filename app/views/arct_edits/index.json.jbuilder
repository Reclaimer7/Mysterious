json.array!(@arct_edits) do |arct_edit|
  json.extract! arct_edit, :id, :title, :text
  json.url arct_edit_url(arct_edit, format: :json)
end
