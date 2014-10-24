# Hooks

# Set up Browser
b= Watir::Browser.new :firefox

Before do
   @b = b
   @b.cookies.clear
end

After do |scenario|
  # After each scenario
end

at_exit do
  # After all features executed
  b.close
end