Rails.application.routes.draw do

  get "/feature1", controller: "my_examples", action: "fortune_method"

  get "/feature2", controller: "my_examples", action: "random_numbers"

  get "/feature3", controller: "my_examples", action: "number_of_visits"

  get "/bottles", controller: "my_examples", action: "bottles"
  
end
