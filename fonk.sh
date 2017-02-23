#function myfunc()
#{
#    myresult='some value'
#}
#
#myfunc
##echo $myresult

function myfunc()
{
    local  myresult='some value '
    echo "$myresult"
}

result=$(myfunc)   # or result=`myfunc`
echo $result
