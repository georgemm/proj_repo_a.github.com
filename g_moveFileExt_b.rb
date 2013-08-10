#!/usr/bin/env ruby
require'FileUtils'

# image collection
FileUtils.mv Dir.glob('*.png'), 'images',  :verbose => true
FileUtils.mv Dir.glob('*.PNG'), 'images',  :verbose => true
FileUtils.mv Dir.glob('*.jpg'), 'images',  :verbose => true
FileUtils.mv Dir.glob('*.JPG'), 'images',  :verbose => true
FileUtils.mv Dir.glob('*.gif'), 'images',  :verbose => true
FileUtils.mv Dir.glob('*.GIF'), 'images',  :verbose => true

# javascript / jquery collection
FileUtils.mv Dir.glob('*.js'), 'javascripts',  :verbose => true
# css collection
FileUtils.mv Dir.glob('*.css'), 'stylesheets',  :verbose => true
# html collection
FileUtils.mv Dir.glob('*.html'), 'html',  :verbose => true
# txt collection
FileUtils.mv Dir.glob('*.txt'), 'documentaion',  :verbose => true
