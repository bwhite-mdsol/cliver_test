cliver_test
===========

To see feature pass with broswer, from command window:

```
bundle install
set IN_BROWSER=yes
bundle exec cucumber
```

To see feature fail, from command window:

```
bundle install
set IN_BROWSER=
bundle exec cucumber
```

My results:

```
C:\git\cliver_test>bundle install
Fetching gem metadata from http://rubygems.org/.........
Fetching additional metadata from http://rubygems.org/..
Resolving dependencies...
Using rake (10.3.2)
Using builder (3.2.2)
Using mime-types (2.3)
Using nokogiri (1.5.7)
Using rack (1.5.2)
Using rack-test (0.6.2)
Using xpath (2.0.0)
Using capybara (2.4.1)
Using ffi (1.9.3)
Using childprocess (0.5.3)
Using cliver (0.3.2)
Using columnize (0.8.9)
Using diff-lcs (1.2.5)
Using multi_json (1.10.1)
Using gherkin (2.12.2)
Using multi_test (0.1.1)
Using cucumber (1.3.16)
Using debugger-linecache (1.2.0)
Using debugger-ruby_core_source (1.3.5)
Using debugger (1.6.8)
Using git (1.2.8)
Using json (1.8.1)
Using phantomjs (1.9.7.1)
Using websocket-driver (0.3.4)
Using poltergeist (1.5.1)
Using rspec-support (3.0.4)
Using rspec-core (3.0.4)
Using rspec-expectations (3.0.4)
Using rspec-mocks (3.0.4)
Using rspec (3.0.0)
Using rubyzip (1.1.6)
Using websocket (1.0.7)
Using selenium-webdriver (2.42.0)
Using win32-process (0.7.4)
Using win32console (1.3.2)
Using bundler (1.5.2)
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.

C:\git\cliver_test>bundle exec cucumber
Feature: Cliver Test via Cucumber

  Scenario: When I navigate to the IIS root I should see the iis image # features\test.feature:3
    When I go to "/"                                                   # features/step_definitions/test_steps.rb:4
      Could not find an executable at given path 'C:/git/cliver_test/features/support/test bin/phantomjs.exe'.If this path was not specified explicitly, it is probably a bug in [Cliver](https://github.com/yaauie/cliver/issues). (Cliver::Dependency::NotFound)
      ./features/step_definitions/test_steps.rb:5:in `/^I (?:am on|go to) "([^\"]*)"$/'
      features\test.feature:4:in `When I go to "/"'
    Then I should see an "img" tag                                     # features/step_definitions/test_steps.rb:8
      Could not find an executable at given path 'C:/git/cliver_test/features/support/test bin/phantomjs.exe'.If this path was not specified explicitly, it is probably a bug in [Cliver](https://github.com/yaauie/cliver/issues). (Cliver::Dependency::NotFound)
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/detector.rb:49:in `detect_version'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:192:in `call'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:192:in `detect_version'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:89:in `block in installed_versions'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:216:in `block in find_executables'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:210:in `map'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:210:in `find_executables'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:86:in `each'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:86:in `installed_versions'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:110:in `each'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver/dependency.rb:110:in `detect!'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/cliver-0.3.2/lib/cliver.rb:24:in `detect!'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/poltergeist-1.5.1/lib/capybara/poltergeist/client.rb:36:in `initialize'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/poltergeist-1.5.1/lib/capybara/poltergeist/client.rb:14:in `new'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/poltergeist-1.5.1/lib/capybara/poltergeist/client.rb:14:in `start'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/poltergeist-1.5.1/lib/capybara/poltergeist/driver.rb:42:in `client'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/poltergeist-1.5.1/lib/capybara/poltergeist/driver.rb:25:in `browser'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/poltergeist-1.5.1/lib/capybara/poltergeist/driver.rb:151:in `reset!'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/capybara-2.4.1/lib/capybara/session.rb:103:in `reset!'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/capybara-2.4.1/lib/capybara.rb:257:in `block in reset_sessions!'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/capybara-2.4.1/lib/capybara.rb:257:in `each'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/capybara-2.4.1/lib/capybara.rb:257:in `reset_sessions!'
      C:/Ruby193/lib/ruby/gems/1.9.1/gems/capybara-2.4.1/lib/capybara/cucumber.rb:8:in `After'

Failing Scenarios:
cucumber features\test.feature:3 # Scenario: When I navigate to the IIS root I should see the iis image

1 scenario (1 failed)
2 steps (1 failed, 1 skipped)
0m0.179s

C:\git\cliver_test>
```
