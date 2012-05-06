# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tumblargh"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Webster"]
  s.date = "2012-05-06"
  s.description = "# Tumblargh\n## Groan-less Tumblr theme development\n\n### What is this thing, and why should I care?\n\nIf you've ever had to build a Tumblr theme, you've probably cried out in pain \nwhile tweaking locally, copying, pasting into the theme editor, saving, switching\ntabs and finally refreshing and waiting for your tesing blog to reload.\n\nTumblargh aims to reduce suffering involved with building a theme by offering \na way to fully develop, lint and test Tumblr themes locally, with real posts \nfrom any existing Tumblog.\n\n### Getting Started\n\nYou'll need to get an OAuth consumer key for the Tumblr v2 API to use remote data\nwith Tumblargh. Registration is simple enough, just go to http://www.tumblr.com/oauth/apps\nand fill out the form. Any time Tumblargh asks for your API key, it'll be the \nOAuth Consumer key provided there.\n\n#### Middleman\n\nThe recommended way to use tumblargh is in conjuction with \n[Middleman](http://middlemanapp.com/).\n\n> Middleman is a static site generator based on Sinatra. Providing dozens of \ntemplating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more).\n\nTumblargh includes a simple Middleman extension that turns any Middleman project\ninto a local Tumblr theme building machine.\n\nTumblargh will automatically parse any html files served by Middleman, and \npopulate them with content from the Tumblr of your choosing. It will not\nparse any HTML during Middleman's build process. The output of`middleman build` \nis ready for use on your blog, or submission to the Tumblr theme store.\n\nTo get up an running with Middleman, first create a new Middleman project:\n\n```\n$ middleman init MY_PROJECT_NAME\n```\n\nIf one does not already exist, create a Gemfile and add the following as needed:\n\n```ruby\nsource \"http://rubygems.org\"\n\ngem 'middleman'\ngem 'tumblargh', :git => 'git://github.com/jasonwebster/tumblargh.git'\n```\n\nNote that there has not yet been an official release of tumblargh to RubyGems,\nso currently, specifying the gem via git is necessary.\n\nRun `bundle install`.\n\nThe bare minimum setup in your Middleman config.rb is:\n\n```ruby\nrequire 'tumblargh'\nrequire 'middleman/features/tumblargh'\n\nactivate :tumblargh\n\nset_tumblr_api_key 'API KEY' # This is your OAuth consumer key\nset_tumblr_blog 'staff.tumblr.com'\n```\n\nIt is highly recommended to run the Middleman server via `bundle exec`.\n\n#### Rack\n\nSee `examples/config.ru` for a minimal Rack setup, ready to go with `rackup` or\nyour Ruby server of choice.\n\n### Known issues & planned features\n\n- Source attribution `{block:ContentSource}`\n- Your likes `{block:Likes}`\n- Twitter integration `{block:Twitter}`\n- Custom page support\n\n\n\n"
  s.email = "jason@metalabdesign.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".gitignore",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "examples/confg.ru",
    "examples/middleman_config.rb",
    "lib/middleman/features/tumblargh.rb",
    "lib/rack/tumblargh.rb",
    "lib/tumblargh.rb",
    "lib/tumblargh/api.rb",
    "lib/tumblargh/grammar.rb",
    "lib/tumblargh/grammar.treetop",
    "lib/tumblargh/node.rb",
    "lib/tumblargh/node/base.rb",
    "lib/tumblargh/node/block.rb",
    "lib/tumblargh/node/block_end.rb",
    "lib/tumblargh/node/block_start.rb",
    "lib/tumblargh/node/literal.rb",
    "lib/tumblargh/node/root.rb",
    "lib/tumblargh/node/tag.rb",
    "lib/tumblargh/parser.rb",
    "lib/tumblargh/renderer.rb",
    "lib/tumblargh/renderer/base.rb",
    "lib/tumblargh/renderer/blocks/answer.rb",
    "lib/tumblargh/renderer/blocks/audio.rb",
    "lib/tumblargh/renderer/blocks/base.rb",
    "lib/tumblargh/renderer/blocks/dates.rb",
    "lib/tumblargh/renderer/blocks/navigation.rb",
    "lib/tumblargh/renderer/blocks/notes.rb",
    "lib/tumblargh/renderer/blocks/posts.rb",
    "lib/tumblargh/renderer/blocks/reblogs.rb",
    "lib/tumblargh/renderer/blocks/tags.rb",
    "lib/tumblargh/renderer/document.rb",
    "lib/tumblargh/renderer/literal.rb",
    "lib/tumblargh/renderer/tag.rb",
    "lib/tumblargh/resource.rb",
    "lib/tumblargh/resource/base.rb",
    "lib/tumblargh/resource/blog.rb",
    "lib/tumblargh/resource/note.rb",
    "lib/tumblargh/resource/post.rb",
    "lib/tumblargh/resource/tag.rb",
    "lib/tumblargh/resource/user.rb",
    "spec/api_spec.rb",
    "spec/fixtures/data/staff.tumblr.com-2012-05-06/posts.json",
    "spec/fixtures/themes/fluid.html",
    "spec/fixtures/themes/solstice.html",
    "spec/parser_spec.rb",
    "spec/renderer/blocks/posts_spec.rb",
    "spec/renderer/document_spec.rb",
    "spec/resource/post_spec.rb",
    "spec/resource_spec.rb",
    "spec/spec_helper.rb",
    "spec/tumblargh_spec.rb"
  ]
  s.homepage = "http://github.com/jasonwebster/tumblargh"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Groan-less Tumblr theme development."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1"])
      s.add_runtime_dependency(%q<treetop>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<api_cache>, [">= 0"])
      s.add_development_dependency(%q<autotest-standalone>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.1"])
      s.add_dependency(%q<treetop>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<api_cache>, [">= 0"])
      s.add_dependency(%q<autotest-standalone>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.1"])
    s.add_dependency(%q<treetop>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<api_cache>, [">= 0"])
    s.add_dependency(%q<autotest-standalone>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

