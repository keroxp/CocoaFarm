require "bundler/setup"
require "minitest/autorun"
$:.unshift File.expand_path '../lib', File.dirname(__FILE__)
require 'cocoafarm'

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