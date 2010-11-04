require 'spec/rake/spectask'

desc "Run all specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = %w(--format specdoc --color)
end

desc "Install gems that this app depends on."
task :install_dependencies do
  dependencies = {
		"sinatra" 					=> "1.1.0",
		"sinatra-flash"		 	=> "0.3.0",
		"dm-core" 					=> "1.0.2",
		"dm-migrations" 		=> "1.0.2",
		"dm-timestamps" 		=> "1.0.2",
  }
  dependencies.each do |gem_name, version|
    puts "#{gem_name} #{version}"
    system "gem install #{gem_name} --version #{version}"
  end
end
