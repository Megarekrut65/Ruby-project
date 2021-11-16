Rails.application.routes.draw do
  root "students#index"
  get "/students/new", to: "students#new"
  get "/students/edit/:id", to: "students#edit"
  get "/students/destroy/:id", to: "students#destroy"
  get "/students", to: "students#index"
  get "/students/functions", to: "students#functions"
  get "/students/worked_teacher_student_list", to: "students#worked_teacher_student_list"
  get "/students/finished_ptu_student_list", to: "students#finished_ptu_student_list"
  get "/students/language_group_list", to: "students#language_group_list"
  get "/students/:id", to: "students#show"
  resources :students
end
