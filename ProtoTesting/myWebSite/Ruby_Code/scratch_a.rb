#!/usr/bin/env ruby

# Page Created by: GMM-Web Design.

 File.open('out.txt', 'OPTION') {|f| f.write('write your stuff here') }

where your options are:

r - Read only. The file must exist.
w - Create an empty file for writing.
a - Append to a file.The file is created if it does not exist.
r+ - Open a file for update both reading and writing. The file must exist.
w+ - Create an empty file for both reading and writing.
a+ - Open a file for reading and appending. The file is created if it does not exist.

In your case, w is preferable.

OR you could have:

    outFile = File.new('out.txt', 'w')
    ...
    outFile.puts('write your stuff here')
    ...
    outFile.close

                 .................................................

You can start any program in ruby with:

`firefox http://www.google.com`
or
system('firefox http://www.google.com')

             ........................................................

