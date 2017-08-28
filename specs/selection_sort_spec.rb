gem 'minitest', '~> 5.8', '>= 5.8.4'
require 'minitest/autorun'

require 'minitest/reporters'
require_relative '../lib/selection_sort'

describe "selection sort" do

  it "once sorted smallest value at zero index" do
    array = [-5, 1000, 2, 3, -2, 10, 100, -500, 7, 101]
    (selection_sort(array)[0]).must_equal -500
  end

  it "once sorted largest value at largest index" do
    array = [-5, 1000, 2, 3, -2, 10, 100, -500, 7, 101]
    (selection_sort(array)[-1]).must_equal 1000
  end

  it "once sorted each successive element is larger than the next" do
    array = [-5, 1000, 2, 3, -2, 10, 100, -500, 7, 101]
    sorted = selection_sort(array)

    index = 0
    sorted.each do |integer|
      if (index + 1) < sorted.length
        (integer <= sorted[index + 1]).must_equal true
        index += 1
      end
    end
  end

end
