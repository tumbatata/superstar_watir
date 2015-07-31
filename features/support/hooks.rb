require 'watir-webdriver'

Before do

  if ENV['BROWSER']
  @browser = Watir::Browser.new ENV['BROWSER'].to_sym
  else
    @browser = Watir::Browser.new :firefox
  end


end



After do |scenario|
  if scenario.failed?
  time = Time.now
  @browser.screenshot.save "./#{time.strftime("results/screenshot_%Y%m%d-%H%M")}.png"
  embed "./#{time.strftime("results/screenshot_%Y%m%d-%H%M")}.png", 'image/png'
  end
  @browser.close
end
