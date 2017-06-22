require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  test "dynamically finding role" do
    %w(admin ioh_core ioh_member speaker organization regular).each do |role|
      assert_not_nil Role.send(role)
    end

    assert_raise NoMethodError do
      Role.send('no_role')
    end
  end
end
