require('pry-byebug')
require_relative('models/property_tracker.rb')

Property.delete_all()

property1 = Property.new(
  {
    'address' => '1234 Rainbow Lane',
    'value' => '123000',
    'bedrooms' => '3',
    'year_built' => '1234'
  }
)

property2 = Property.new(
  {
    'address' => '5 Elm Street',
    'value' => '10000',
    'bedrooms' => '4',
    'year_built' => '1666'
  }
)

property1.save()
property2.save()

property1.bedrooms = 2
property1.update()


binding.pry
nil
