case Padrino.env
  when :development then RIPPLE_NAME = 'ripple_demo_development'
  when :production  then RIPPLE_NAME = 'ripple_demo_production'
  when :test        then RIPPLE_NAME = 'ripple_demo_test'
end
RIPPLE = Riak::Client.new()
