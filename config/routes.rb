Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # READ ALL -> DISPLAY ALL TASKS
  get "tasks", to: "tasks#index"

  # CREATE step 1: GET the form to create new task
  get "tasks/new", to: "tasks#new", as: :new
  # CREATE step 2: POST the form
  post "tasks", to: "tasks#create"

  # READ ONE -> when clicking task title and navigate to a new page, displaying the details of this task
  get "tasks/:id", to: "tasks#show", as: :task

  # UPDATE/EDIT - Step 1: GET
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # UPDATE/EDIT - Step 2: Patch
  patch "tasks/:id", to: "tasks#update"

  # DELETE
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task

  # resources :tasks
end
