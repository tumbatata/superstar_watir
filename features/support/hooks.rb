require 'watir-webdriver'

Before do

    @browser = Watir::Browser.new :firefox

end

After do |scenario|
  @browser.screenshot.save 'screenshot.png'
  embed 'screenshot.png', 'image/png'
  @browser.close
end

