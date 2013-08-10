#!/usr/bin/env ruby

i = 0
num = 1

while i < num  do 
   i +=1
print i,' < :: > '
puts num

if(i == num)
    num += 1
    i=0
  elsif(num == 30)
  i = 'stop'
end
end
