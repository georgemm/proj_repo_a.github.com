# Gems which are required
require 'rubygems'
require 'gosu'

# class GameWindow
#
# # def initialize
# # # caption set
# # # @font to present a string
# # # @counter to keep time
# # # @bkg_image set backdrop
# # # @you is the star of the show
class GameWindow < Gosu::Window

  def initialize
    super(640,480,false)
    self.caption = "Henry in Cat-Nappers"
    @font = Gosu::Font.new(self, Gosu::default_font_name, 20)
    @counter = 0
    @bkg_image = Gosu::Image.new(self, "space.png", true)
    @you = Gosu::Image.new(self, "starship.gif",true)
    @goR = -100
  end

# def update
  def update
    @goR +=5
    if @goR == 700
      @goR = -100
      end
  end


# def draw to draw image to the screen
# # bkg_image is placed
# # font.draw places title on screen in yellow text
# # you is placed
  def draw
   @bkg_image.draw(0, 0, 0) 
   @font.draw(self.caption, 220, 25, 2, 1.0, 1.0, 0xffffff00)
   @you.draw(@goR,110,5)
  end

# def button_down(id) listens for keyboard down_press
# # Gosu::KbEscape is set to close the screen 
  def button_down(id)
    @counter = 0  # reset counter on each button down

    case id
    when Gosu::KbEscape
      close  # exit on press of escape key
    end
  end
end
window = GameWindow.new
window.show
