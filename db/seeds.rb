(1..5).each do |num|
  Task.create!(name: "Task #{num}", completed: false)
end
