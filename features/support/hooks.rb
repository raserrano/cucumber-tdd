Before do 
  puts 'Start scenario'
end

After do
  puts 'Scenario ended'
end

Before ('@class, @instance') do
  puts 'OOP'
end

Before ('@class') do
  puts 'Class'
end

