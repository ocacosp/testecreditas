require 'watir'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
end

After do
end