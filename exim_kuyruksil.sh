exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | basexim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bashh
