json.extract! request, :id, :requester, :reason, :created_at, :updated_at
json.url request_url(request, format: :json)