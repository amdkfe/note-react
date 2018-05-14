json.extract! note, :id, :title, :content, :tags, :created_at, :updated_at
json.url note_url(note, format: :json)
