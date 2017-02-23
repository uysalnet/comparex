#!/usr/bin/python

import os, sys

# Open a file
fd = os.open( "test_dosya_py_ile.txt", os.O_RDWR|os.O_CREAT|os.O_APPEND )

# Write one string
os.write(fd, "Dosyanin icine yazilan satir...")

# Close opened file
os.close( fd )

print "Closed the file successfully!!"
print "bitti..."
