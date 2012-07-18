user node[:user][:name]

template "/etc/init/collector.conf" do
  mode "644"
  notifies :restart, "service[collector]"
end

template "/etc/init/evaluator.conf" do
  mode "644"
  notifies :restart, "service[evaluator]"
end

service "collector" do
  provider Chef::Provider::Service::Upstart
  supports :status => true, :restart => true
  action [ :enable, :start ]
end

service "evaluator" do
  provider Chef::Provider::Service::Upstart
  supports :status => true, :restart => true
  action [ :enable, :start ]
end