#!/usr/bin/env ruby

mD=Dir.mkdir("rubyMadeDir")

Dir.chdir("./rubyMadeDir")

outFile = File.new("rubyMade.rb", "w")
    outFile.puts("#!/usr/bin/env ruby

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
  i = 5000
  puts'End of Program'
end
end")
    outFile.close

 system("ruby", "rubyMade.rb")
