require "test_helper"

describe AuthorsController do
  it "should get index" do
    get authors_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get authors_show_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get authors_edit_url
    value(response).must_be :success?
  end

  it "should get update" do
    get authors_update_url
    value(response).must_be :success?
  end

  it "should get new" do
    get authors_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get authors_create_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get authors_destroy_url
    value(response).must_be :success?
  end

end
