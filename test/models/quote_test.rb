# frozen_string_literal: true

require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  def setup
    @quote = quotes(:first)
  end

  def test_validates_name_presence
    @quote.name = ''

    assert_predicate @quote, :invalid?
    assert @quote.errors.of_kind?(:name, :blank)
  end
end
