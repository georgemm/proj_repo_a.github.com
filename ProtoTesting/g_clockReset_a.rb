# Ruby Proto Code
# #
#!/usr/bin/env ruby
# #

require 'rubygems' # Obvious
require 'FileUtils'# Uses 'File Utilities' gem
require 'gosu' # Windowed Game gem
# require 'g_scratch_a.rb' # only works in ruby 1.9.1 // custom_require
# # custom_require work-a-round create a gem from the file that you've created and require it.

class GameWindow < Gosu::Window
  def initialize
    super 400, 400, false
    self.caption = "George's Gosu Window"
     @font = Gosu::Font.new(self, Gosu::default_font_name, 20)
     @counter = 0
     @bcounter = 0
  end

def update
  @counter +=1 # Clock
  @rstcounter = -20 #Clock Reset
end

def draw #draw method

 # Clock & Clock Reset Logic
  if @counter == 420
    @counter = @rstcounter
    else
    @counter = @counter

 # drawing the Output
 @font.draw('<::Clock and Reset::>', 150, @counter,0,1)
 @font.draw(@counter, 0, 180, 180,5)
end
end
end

window = GameWindow.new
window.show

