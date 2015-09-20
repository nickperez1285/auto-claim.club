import cgi
form = cgi.FieldStorage()
print form["uuid"]
print form["geo-location-x"]