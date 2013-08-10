#!/usr/bin/env ruby
require'FileUtils'


FileUtils.mv Dir.glob('*.png'), 'images',  :verbose => true



