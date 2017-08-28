require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_search'

describe "binary_search" do

  it "finds what you were looking for" do
    my_list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]

    binary_search(my_list, 15).must_equal 7
    binary_search(my_list, 1).must_equal 0
    binary_search(my_list, 21). must_equal 10
  end

  it "raises argument error if query not in data set" do
    my_list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]
    proc {binary_search(my_list, -2).must_raise ArgumentError}
  end

end
