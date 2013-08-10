#!/usr/bin/env ruby
require'FileUtils'

# Create Main Directory
mD=Dir.mkdir("HTML_project")
Dir.chdir("./HTML_project")

# Create Ruby Code Directory
mDIn1=Dir.mkdir("Ruby_Code")

# Create JavaScripts Directory
mDIn2=Dir.mkdir("JavaScripts")

# Create CSS Directory
mDIn3=Dir.mkdir("CSS")

# Create Images Directory
mDIn4=Dir.mkdir("images")

# Change Directory
  Dir.chdir("..")

# Data Collection and Organization

# image collection
FileUtils.mv Dir.glob('*.png'), 'HTML_project/images',  :verbose => true
FileUtils.mv Dir.glob('*.PNG'), 'HTML_project/images',  :verbose => true
FileUtils.mv Dir.glob('*.jpg'), 'HTML_project/images',  :verbose => true
FileUtils.mv Dir.glob('*.JPG'), 'HTML_project/images',  :verbose => true
FileUtils.mv Dir.glob('*.gif'), 'HTML_project/images',  :verbose => true
FileUtils.mv Dir.glob('*.GIF'), 'HTML_project/images',  :verbose => true

# javascript / jquery collection
FileUtils.mv Dir.glob('*.js'), 'HTML_project/javascripts',  :verbose => true
FileUtils.mv Dir.glob('*.JS'), 'HTML_project/javascripts',  :verbose => true
# css collection
FileUtils.mv Dir.glob('*.css'), 'HTML_project/stylesheets',  :verbose => true
FileUtils.mv Dir.glob('*.CSS'), 'HTML_project/stylesheets',  :verbose => true
# txt collection
FileUtils.mv Dir.glob('*.txt'), 'HTML_project/documentaion',  :verbose => true
FileUtils.mv Dir.glob('*.TXT'), 'HTML_project/documentaion',  :verbose => true
# html Does not get collected.
