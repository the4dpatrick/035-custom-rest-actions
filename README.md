035 Custom REST Actions
=======================

Followed along with Railscast 035 Custom REST Actions

[Blog Post](http://patrickperey.com/railscast-035-custom-rest-actions) @ [PatrickPerey.com](http://patrickperey.com)

```ruby
def completed
  @tasks = Task.where(completed: true)
end

def complete
  @task.update_attribute :completed, true
  flash[:notice] = 'Task Completed'
  redirect_to completed_tasks_path
end
```

```ruby
resources :tasks do
  get 'completed', on: :collection
  put 'complete', on: :member
end
```
