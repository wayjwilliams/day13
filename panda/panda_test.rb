require 'minitest/autorun'
require 'minitest/pride'
require './panda'

class PandaTest < MiniTest::Test

  def test_panda_eats_bamboo_pikas_rodent
# panda = Panda.new you don't need this if you put it on the bottom!!!
    %i(bamboo pikas rodents). each do |food|
    assert_equal true, panda.eat(food)
  end
  end

  def test_panda_eats_bacon
    assert_equal false, panda.eat(:bacon)
  end

  def test_panda_climbs_trees
    assert_equal true, panda.climb(:tree)
  end

  def test_panda_climbs_hills
    assert_equal false, panda.climb(:hill)
  end

  def test_pandas_sleep_a_bunch
    percent = panda.sleep_percentage
    assert_equal false, (percent >= bunch_threshold)
  end

  def bunch_threshold
    16/24.0
  end

  panda = Panda.new


end
