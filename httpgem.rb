require "http"

response = HTTP.get("http://localhost:3000/feature1")

pp response.parse(:json)