resource :impersonation, only: [] do
  collection do
    get 'start'
    get 'stop'
  end
end
