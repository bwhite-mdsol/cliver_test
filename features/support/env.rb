require 'rspec/expectations'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'win32api'

def get_short_win32_filename(long_name)
    require 'win32api'
    win_func = Win32API.new("kernel32","GetShortPathName","PPL"," L")
    buf = 0.chr * 256
    buf[0..long_name.length-1] = long_name
    win_func.call(long_name, buf, buf.length)
    return buf.split(0.chr).first
end

# add phantomsjs to path
phantomjs_path = File.absolute_path(File.join('features','support','test bin'))

ENV['PATH'] = "#{phantomjs_path};#{ENV['PATH']}" if ENV['PATH'].index("test bin").nil?

if ENV['IN_BROWSER']
  # On demand: non-headless tests via Selenium/WebDriver
  # To run the scenarios in browser (default: Firefox), use the following command line:
  # IN_BROWSER=true bundle exec cucumber
  # or (to have a pause of 1 second between each step):
  # IN_BROWSER=true PAUSE=1 bundle exec cucumber
  Capybara.default_driver = Capybara.javascript_driver = :selenium
else
  # DEFAULT: headless tests with poltergeist/PhantomJS
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      window_size: [1280, 1024],
      phantomjs:   File.join(phantomjs_path,"phantomjs.exe"),
      debug:       true
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
end

Capybara.app_host = "http://localhost"

