
Before do
  driver.start_driver
  # driver.manage.timeouts.implicit_wait = 10

  # device_type = "android"
  # @screen = DroidScreens.new if device_type.eql?("android")
end
  
# After do
#   # screenshot = driver.screenshot_as(:base64)
#   # embed(screenshot, "image/png", "Screenshot")

#   driver.quit_driver
# end