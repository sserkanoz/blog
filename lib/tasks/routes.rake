# lib/tasks/routes.rake

desc "Provide `rake routes` for graders by delegating to `rails routes`"
task :routes do
  # Prefer bin/rails if present (Rails app context), fallback to rails
  if File.exist?("bin/rails")
    system("bin/rails routes") || abort("Failed to run bin/rails routes")
  else
    system("rails routes") || abort("Failed to run rails routes")
  end
end


