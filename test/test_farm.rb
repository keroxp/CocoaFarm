require File.expand_path 'test_helper', File.dirname(__FILE__)

class FarmTest < MiniTest::Unit::TestCase

  def setup
      @app = Cocoafarm::App.new
  end

  def test_app
    assert @app
  end

  def test_cmd
    assert @app.run [__FILE__, "init"]
  end
end