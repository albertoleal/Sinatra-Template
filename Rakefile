require 'rspec/core/rake_task'
desc "Run all specs"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ["-c", "-f progress", "-r ./spec/spec_helper.rb"]
  t.pattern = 'spec/**/*_spec.rb'
end

desc "Install gems that this app depends on."
task :install_dependencies do
  dependencies = {
		"sinatra" 					=> "1.1.0",
		"sinatra-flash"		 	=> "0.3.0",
		"dm-core" 					=> "1.0.2",
		"dm-migrations" 		=> "1.0.2",
		"dm-timestamps" 		=> "1.0.2"
  }
  dependencies.each do |gem_name, version|
    puts "#{gem_name} #{version}"
    system "gem install #{gem_name} --version #{version}"
  end
end
