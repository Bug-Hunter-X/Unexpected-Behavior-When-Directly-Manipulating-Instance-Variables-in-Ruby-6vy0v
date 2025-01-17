```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value # Output: 20

# Unexpected behavior when using instance_variable_get
puts my_object.instance_variable_get(:@value) #Output: 20

my_object.instance_variable_set('@value',30) #This will not work properly
puts my_object.value #Output: 20
```