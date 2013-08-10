#!/usr/bin/env ruby

require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(220, 320, false)
    self.caption = "Peter Lore"
    
    @background_image = Gosu::Image.new(self, "pl.png", true)
  end
  
  def update
  end
  
  def draw
    @background_image.draw(0, 0, 0)
  end
end

window = GameWindow.new
window.show
