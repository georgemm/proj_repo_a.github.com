=begin

The example adds obstacles and simple collision detection

Note that sounds are played by the main window object. This is to provide the
ability to turn off sound effects, music or both, and to allow for pausing/resuming
sounds when the game is paused.

=end

require 'rubygems'
require 'gosu'

# Use module to define relative Z-order of game elements
module ZOrder
  Background = 0
  Star = 1
  Shot = 2
  Ship = 3
  UI = 4
end

module GameUtilities

  # returns a random color
  def self.random_color(base_brightness = 40)
    color = Gosu::Color.new(0xff000000)
    color.red = rand(255-base_brightness) + base_brightness
    color.green = rand(255-base_brightness) + base_brightness
    color.blue = rand(255-base_brightness) + base_brightness
    color
  end
  
  # Determines if two objects collide given their x,y coordinates and radii
  def self.collide?(thing1, thing2)
    dist = Gosu::distance(thing1.x, thing1.y, thing2.x, thing2.y)
    dist < (thing1.radius + thing2.radius)
  end

end


class GameWindow < Gosu::Window

  def initialize
    super(300,1,false)
    self.caption = "Sound Demo"

    @background_image = Gosu::Image.new(self, "media/space.png", true)

    # load background music
    @backmusic = Gosu::Song.new(self, "media/backmusic.m4a")
    @backmusic.play(true)
  end
  
  def toggle_music
    if @backmusic.playing?
      @backmusic.pause
    else
      @backmusic.play(true)
    end
  end
  
  def update
  end
  def button_down(id)
    @last_btn = id
    case id
    when Gosu::KbQ, Gosu::KbEscape
      close  # exit on press of escape key
    when Gosu::KbP
      toggle_music
    else
      # pass additional button presses to ship to control weaponry
      @ship.button_down(id)
    end
  end
end

window = GameWindow.new
window.show
