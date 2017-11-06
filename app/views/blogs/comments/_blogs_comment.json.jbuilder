json.extract! blogs_comment, :id, :comment, :created_at, :updated_at
json.url blogs_comment_url(blogs_comment, format: :json)
