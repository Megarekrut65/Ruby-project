Rails.application.routes.draw do
  root "students#index"
  get "/students/new", to: "students#new"
  get "/students/:id", to: "students#show"
  get "/students", to: "students#index"
  get "/students/functions", to: "students#functions"
  get "/students/worked_teacher_student_list", to: "students#worked_teacher_student_list"
  get "/students/finished_ptu_student_list", to: "students#finished_ptu_student_list"
  get "/students/language_group_list", to: "students#language_group_list"

  resources :students
end
