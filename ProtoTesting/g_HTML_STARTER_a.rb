#!/usr/bin/env ruby

mD=Dir.mkdir("myWebSite")
Dir.chdir("./myWebSite")

main = File.new("index.html", "w")
    main.puts("
<!Doctype html>
<html>
<head>
<meta charset='utf-8' />
    <meta http-equiv='X-UA-Compatible' content='chrome=' />
    <meta name='description' content='Townsend Personal Care : T' />
    <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1'>

    <!-- stylesheet.css contains the *essential* css for styling. -->
    <link rel='stylesheet' type='text/css 'href='css/stylesheet.css'>

    <!-- javascript.js contains the *essential* js for operating. -->
    <script type='text/javascript' src='javascript.js'></script>

    <!-- load jQuery and the plugin -->
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>

<title>Your Title Heer</title>
</head>

<body>
<!-- test.shtml contains the *essential* shtml for updates. -->
    <script src='testCounter.php'></script>

<!-- Image Logo -->
<center>
  <table>
    <th>
      <img id='logo'src='media/logo.gif' alt='logo'/>
    </th>
  </table>
<!-- End or Image Logo -->


<!-- Nav Bar -->
 <ul id='list-nav'>
  <li><a href='index.html'>Home</a></li>
  <li><a href='tour.html'>Tour</a></li>
  <li><a href='affiliates'>Affiliates</a></li>
  <li><a href='information.html'>Information</a></li>
  <li><a href='loca.html'>Location</a></li>
  </ul>
<!-- End of Nav Bar -->
<br/>

</body>
</html>")
    main.close

text = File.new("hitcounter.txt", "w")
    text.puts("Page Created by: GMM-Web Design.")
    text.close

mDIn1=Dir.mkdir("Ruby_Code")
Dir.chdir("./Ruby_Code")

rub = File.new("scratch_a.rb", "w")
    rub.puts("#!/usr/bin/env ruby

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

")
    rub.close

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
I like to prototype in ruby code. So heers a scratch pad for you.")
    readme.close

  Dir.chdir("..")

mDIn2=Dir.mkdir("javascripts")
Dir.chdir("./javascripts")

javascript = File.new("javascript.js", "w")
    javascript.puts("")
    javascript.close

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
All your javascripts can be organized here.")
    readme.close

  Dir.chdir("..")

mDIn3=Dir.mkdir("css")
Dir.chdir("./css")

css = File.new("stylesheet.css", "w")
    css.puts("

html 
{ 
  background: url('../media/rMView.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

body
{ 
  position:absolute;left:4%;
  width:90%;
  padding:10px;
  border: 1px solid black;
  border-radius:5px;
  background: url('../media/blueBack.gif') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  opacity:.8;
}
h2
{
color:red;
text-shadow:1px 1px 1px black;
}
h3
{
color:black;
text-shadow:1px 0px 10px white;
font-size: 28px;
font-weight: 600;
}

p
{
  text-indent:50px;
  border: 1px solid blue;
  border-radius:4px;
  padding:3px;
  font-size: 22px;
  font-weight: 500;
  background: url('../media/preBack.gif') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
img
{
  width: 200px;
  height: 150px;
  border-radius:3px;
  overflow: hidden;
}
/* Slide Show */
#slideShow
{
  width:60%;
  height: 60%;
  border-radius:3px;
  overflow: hidden;
}
/* Image Logo 1 */
#logo
{
  width: 100%;
  height: 100%;
}
/* Image Logo 2 */
#logo2
{
  width: 100%;
  height: 100%;
}
/* Image Logo 2 */

/* Nav Bar */
ul#list-nav {
  list-style:none;
  margin:20px;
  padding:0;
  width:525px
}
ul#list-nav li {
  display:inline
}
ul#list-nav li a {
  text-decoration:none;
  padding:5px 0;
  width:100px;
  background:#485e49;
  color:#eee;
  float:left;
  text-align:center;
  border-left:1px solid #fff;
}
ul#list-nav li a:hover {
  background-image:url('../media/preBack.gif');
  color:#000
}
/* End of Nav Bar */")
    css.close

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
This is stylesheet to get started with.")
    readme.close

  Dir.chdir("..")

mDIn4=Dir.mkdir("media")
Dir.chdir("./media")

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
This folder is for Picture, Movies, Music, etc.")
    readme.close

  Dir.chdir("..")

mDIn5=Dir.mkdir("includes")
Dir.chdir("./includes")

shtml = File.new("test.shtml", "w")
    shtml.puts("

<!--#echo var='DATE_LOCAL' --> <br/><br/>

<b>Your address is :: <!--#echo var='REMOTE_ADDR' --> ::<br/><br/>

<b>Last Modification Was Performed :: <!--#echo var='LAST_MODIFIED' --> :: </b><br/><br/>

<b>Path to current document :: <!--#echo var='DOCUMENT_URI' --> ::<br/><br/><hr/>")

    shtml.close

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
This folder contains shtml files. Server Side Includes, helps keep organized for better updates.")
    readme.close

  Dir.chdir("..")

mDIn6=Dir.mkdir("php")
Dir.chdir("./php")

php = File.new("testCounter.php", "w")
    php.puts("

?php
$count_my_page = ('hitcounter.txt');
$hits = file($count_my_page);
$hits[0] ++;
$fp = fopen($count_my_page , 'w');
fputs($fp , '$hits[0]');
fclose($fp);
echo $hits[0];echo' :: Total Hits';
?>")
    php.close

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
Remember you must upload php documents to a server or use wamp, xamp, or lamp to test it.")
    readme.close

  Dir.chdir("..")

mDIn7=Dir.mkdir("back_up")
Dir.chdir("./back_up")

readme = File.new("readme.txt", "w")
    readme.puts("<!--- Page Created by: GMM-Web Design.--->
This folder is for compressed old work.")
    readme.close

  Dir.chdir("..")
