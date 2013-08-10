#!/usr/bin/env ruby

require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "George's Circle Window"
  end
  
  def update
  end
  
  def draw
    draw_background
 end

 def draw_background
   draw_triangle(100, 100, 100, 100, 100, 200, 200, 200, 300, z=1, mode=:default)

 end
end

window = GameWindow.new
window.show
