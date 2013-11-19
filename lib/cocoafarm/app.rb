module Cocoafarm::App
  def self.new
    App.new
  end
  class App
    def initialize
      @args = {}
    end
    def run(argv)
      ap "hello cocoafarm!"
      ap argv
      @args = ArgsParser.parse ARGV do
        arg :project, "A Xcode project file", :alias => :p
      end
      ap @args
    end
  end
end