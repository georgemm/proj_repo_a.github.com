#!/usr/bin/env ruby

require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "George's Gosu Window"
  end
  
  def update
  end
  
  def draw
  end
end

window = GameWindow.new
window.show
