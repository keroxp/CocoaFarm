require File.expand_path 'test_helper', File.dirname(__FILE__)
require "xcodeproj"

class XcodeprojTest < MiniTest::Unit::TestCase
  def setup
    @path = File.expand_path "../example/iOSProject/iOSProject.xcodeproj", File.dirname(__FILE__)
    @xcodeproj = Xcodeproj::Project.open @path
  end
  def test_xcodeproj
    assert @xcodeproj
    ap @xcodeproj.build_configurations
  end
  def test_schemes
     p = Xcodeproj::Project.schemes @path
     assert p
     ap p
  end
end