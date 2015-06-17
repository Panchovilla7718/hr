require 'test_helper'

class SupervisorTest < ActiveSupport::TestCase
  
  def setup
    @supervisor = Supervisor.new(name: "Seth Contreras", email: "sethmcontreras@gmail.com", plant: "East Plant")
  end
  
  
  test "supervisor is valid" do
    assert @supervisor.valid?
  end
  
  test "supervisor name is not present" do
    @supervisor.name = " "
    assert_not @supervisor.valid?
  end
  
  test "supervisor name is too short" do
    @supervisor.name = "aaaa"
    assert_not @supervisor.valid?
  end
  
  test "supervisor name is too long" do
    @supervisor.name = "a" * 51
    assert_not @supervisor.valid?
  end
  
  test "email should be present" do
    @supervisor.email = " "
    assert_not @supervisor.valid?
  end
  
  test "plant should be present" do
    @supervisor.plant = " "
    assert_not @supervisor.valid?
  end
  
  test "plant is too short" do
    @supervisor.plant = "aaaa"
    assert_not @supervisor.valid?
  end
  
  test "email should be unique" do
    dup_supervisor = @supervisor.dup
    dup_supervisor.email = @supervisor.email.upcase
    @supervisor.save
    assert_not dup_supervisor.valid?
  end
  
  test "email validation should be valid addresses" do
    valid_addresses = %w[test.test@jbssa.com test.test@pilgrims.com]
    valid_addresses.each do |va|
      @supervisor.email = va
      assert @supervisor.valid?, '#{va.inspect} should be valid'
    end
  end
  
end
