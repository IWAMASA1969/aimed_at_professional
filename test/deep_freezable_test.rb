require 'minitest/autorun'
require_relative '../lib/team'
require_relative '../lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal %w[Japan US India], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all?(&:frozen?)
  end

  def test_deep_freeze_to_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |k, v| k.frozen? && v.frozen? }
  end
end