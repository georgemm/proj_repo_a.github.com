#!/usr/bin/env ruby

mD=Dir.mkdir("georges_Folder_Layout")
Dir.chdir("./georges_Folder_Layout")

mDIn1=Dir.mkdir("Ruby_Code")
Dir.chdir("./Ruby_Code")

rub = File.new("scratch_a.rb", "w")
    rub.puts("#!/usr/bin/env ruby

# Page Created by: GMM-Web Design.

# scratch.rb")
    rub.close

  Dir.chdir("..")

mDIn2=Dir.mkdir("JavaScripts")
Dir.chdir("./JavaScripts")

javascript = File.new("javascript.js", "w")
    javascript.puts("#!/usr/bin/env ruby

# Page Created by: GMM-Web Design.

# scratch.js")
    javascript.close

  Dir.chdir("..")

mDIn3=Dir.mkdir("CSS")
Dir.chdir("./CSS")

css = File.new("stylesheet.css", "w")
    css.puts("#!/usr/bin/env ruby

# Page Created by: GMM-Web Design.

# scratch.css")
    css.close

  Dir.chdir("..")

mDIn4=Dir.mkdir("images")
Dir.chdir("./images")

    images.close
