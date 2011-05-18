class LeavesTask < Rails::Railtie
  raise 'your mom'
  rake_tasks do
    Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].each { |f| load f }
  end
end

