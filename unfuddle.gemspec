# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jl-unfuddle}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Matheson"]
  s.date = %q{2009-10-12}
  s.description = %q{Integrates your rails app with Unfuddle API and Rack}
  s.email = %q{me@timmatheson.com}
  s.extra_rdoc_files = ["lib/tasks/unfuddle.rake", "lib/unfuddle/account.rb", "lib/unfuddle/changeset.rb", "lib/unfuddle/message.rb", "lib/unfuddle/milestone.rb", "lib/unfuddle/notebook.rb", "lib/unfuddle/person.rb", "lib/unfuddle/project.rb", "lib/unfuddle/repository.rb", "lib/unfuddle/session.rb", "lib/unfuddle/ticket.rb", "lib/unfuddle/time_tracking.rb", "lib/unfuddle.rb", "lib/unfuddle_notifier.rb", "README.rdoc"]
  s.files = ["init.rb", "install.rb", "lib/tasks/unfuddle.rake", "lib/unfuddle/account.rb", "lib/unfuddle/changeset.rb", "lib/unfuddle/message.rb", "lib/unfuddle/milestone.rb", "lib/unfuddle/notebook.rb", "lib/unfuddle/person.rb", "lib/unfuddle/project.rb", "lib/unfuddle/repository.rb", "lib/unfuddle/session.rb", "lib/unfuddle/ticket.rb", "lib/unfuddle/time_tracking.rb", "lib/unfuddle.rb", "lib/unfuddle_notifier.rb", "Rakefile", "README.rdoc", "spec/lib/unfuddle/account_spec.rb", "spec/lib/unfuddle/changeset_spec.rb", "spec/lib/unfuddle/message_spec.rb", "spec/lib/unfuddle/milestone_spec.rb", "spec/lib/unfuddle/notebook_spec.rb", "spec/lib/unfuddle/person_spec.rb", "spec/lib/unfuddle/project_spec.rb", "spec/lib/unfuddle/repository_spec.rb", "spec/lib/unfuddle/session_spec.rb", "spec/lib/unfuddle/ticket_spec.rb", "spec/lib/unfuddle/time_tracking_spec.rb", "spec/spec_helper.rb", "views/ui/panel.html.erb", "Manifest", "unfuddle.gemspec"]
  s.homepage = %q{http://www.timmatheson.com}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Unfuddle", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Integrates your rails app with Unfuddle API and Rack}
  s.add_dependency 'chronic'

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
