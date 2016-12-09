require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "Sample ROR application"
    assert_equal full_title("Help"), "Help | Sample ROR application"
  end

end
