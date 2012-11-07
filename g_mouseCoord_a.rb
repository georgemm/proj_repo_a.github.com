=begin

This very simple example demonstrates the Gosu::Window update/draw
loop by incrementing a counter on each update, and drawing the value
on each call to draw.

=end

require 'rubygems'
require 'gosu'

class GameWindow < Gosu::Window

  def initialize
    super(450,450,false)
    self.caption = "Update/Draw Demo"
    
    # we load the font once during initialize, much faster than
    # loading the font before every draw
    @font = Gosu::Font.new(self, Gosu::default_font_name, 20)
    @counter = 0
    @countdwn = 0
end
  
  def update
    @counter += 20

    if @counter == 480
      @counter = -100

    @countdwn += 10

    if @countdwn ==480
      @countdwn = 0

  end
end
end
  
  def draw
    @font.draw(@counter,@counter,@countdwn,1)
    @font.draw('Mouse Y: ',mouse_x,50,1)
    @font.draw('Mouse X: ',50,mouse_y,1)

    @font.draw(mouse_x,0,0,1)
    @font.draw(mouse_y,0,20,1)
  end
  
  def button_down(id)
    if id == Gosu::KbEscape
      close  # exit on press of escape key
    end
  end

end

window = GameWindow.new
window.show
