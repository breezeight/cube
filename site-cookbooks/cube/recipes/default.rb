execute "cube collector start" do
  command "node bin/collector.js &"
  cwd "/vagrant"
end

execute "cube evaluator start" do
  command "node bin/evaluator.js &"
  cwd "/vagrant"
end