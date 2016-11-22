require 'test_helper'

class DataImportControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_data_import_path
    assert_response :success
  end

  test "should get create" do
    post data_import_index_path
    assert_response :redirect
  end

end
