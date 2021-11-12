##

if [ $# -ne 3 ]; then
	echo "Count of Argument passed is not correct"
	echo "Syntax to run the scrit is as follows -"
	echo "$0 <dbuser> <dbhost> <dbname>"
	exit 1
else

	v_user=$1
	v_pass=$(cat passfile)
	v_host=$2
	v_dbname=$3

	echo "mysqldump -u$v_user -p$v_pass -h$v_host $v_dbname > $v_dbname.sql"

fi

