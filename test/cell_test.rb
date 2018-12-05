require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require 'pry'

class CellTest < Minitest::Test

  def test_it_exists
    # skip
    cell = Cell.new("B4")
    assert_instance_of Cell, cell
  end

  def test_coordinate_of_cell
    # skip
    cell = Cell.new("B4")
    assert_equal "B4", cell.coordinate
  end

  def test_if_cell_has_a_ship
    # skip
    cell = Cell.new("B4")
    assert_nil cell.ship
  end

  def test_if_a_cell_is_empty
    # skip
    cell = Cell.new("B4")
    assert cell.empty?
  end

  def test_if_a_ship_is_placed
    # skip
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    assert_equal cruiser, cell.ship
  end

  def test_if_a_cell_is_not_empty
    # skip
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    refute cell.empty?
  end

  def test_that_ship_was_fired_upon
    # skip
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    refute cell.fired_upon?
  end

  def test_does_fired_upon_affect_ship_health
    # skip
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    cell.fire_upon
    # binding.pry
    assert_equal 2, cell.ship.health
  end

  def test_that_fired_upon_can_return_true
    # skip
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    cell.fire_upon
    assert cell.fired_upon?
  end

  def test_render_empty_returns_a_period
    cell_1 = Cell.new("B4")
    cell_1.render
    assert_equal ".", cell_1.render
  end

  def test_render_empty_returns_a_miss
    cell_1 = Cell.new("B4")
    cell_1.fire_upon
    cell_1.render
    assert_equal "M", cell_1.render
  end

  def test_it_renders_a_period
    skip
    cell_1 = Cell.new("B4")
    assert_equal ".", cell_1.render
  end

  def test_it_renders_an_m_after_fire_upon_in_empty_cell
    skip
    cell_1 = Cell.new("B4")
    cell_1.fire_upon
    assert_equal "M", cell_1.render
  end

  def test_it_renders_a_period_in_an_occupied_cell
    skip
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    cell_2.render
    assert_equal ".", cell_2.render
  end

  def test_optional_boolean_for_showing_a_ship
    skip
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    cell_2.render(true)
    assert_equal "S", cell_2.render(true)
  end

  def test_it_renders_a_hit
    skip
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    cell_2.fire_upon
    cell_2.render
    assert_equal "H", cell_2.render
  end

  def test_it_renders_a_sunk_ship
    skip
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    cell_2.fire_upon
    cell_2.fire_upon
    cell_2.fire_upon
    cell_2.render
    # binding.pry
    assert_equal "X", cell_2.render
  end
end
