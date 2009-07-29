# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{justlogging-rails_logger}
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robert Beekman"]
  s.date = %q{2009-07-13}
  s.description = %q{Justlogging is a webservice that allows you to log just about anything. This is the ruby gem for API interaction.}
  s.email = %q{robert@justlogging.com}
  s.files = ["MIT-LICENSE", "README.textile", "lib/justlogging.rb", "generators/justlogging/justlogging_generator.rb", "generators/justlogging/templates/justlogging.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/justlogging/rails_logger}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{rails_logger is a justlogging API wrapper}
end